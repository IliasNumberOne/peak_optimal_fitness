import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:peak_optimal/data/data.dart';
import 'package:peak_optimal/providers/statistics_provider.dart';
import 'package:peak_optimal/utils/theme_helper.dart';
import 'package:peak_optimal/widgets/widgets.dart';
import 'package:provider/provider.dart';

class StatisticsScreen extends StatelessWidget {
  const StatisticsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) {
        return StatisticsProvider(
          preferencesService: Provider.of(context, listen: false),
          activitiesService: Provider.of(context, listen: false),
        )..init();
      },
      child: Consumer<StatisticsProvider>(
        builder: (BuildContext context, StatisticsProvider value, Widget? child) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 29.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 25.h),
                Text(
                  'Statistics',
                  style: ThemeStyles.textStyle14,
                ),
                SizedBox(height: 20.h),
                Expanded(
                  child: ListView.builder(
                    itemCount: value.allStats.length,
                    itemBuilder: (context, index) {
                      final statistics = allStats[index];
                      final stats = value.allStats[index];
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            statistics.name,
                            style: ThemeStyles.textStyle9.copyWith(
                              color: ThemeColors.gray,
                            ),
                          ),
                          SizedBox(height: 16.h),
                          ChartWidget(
                            defaultMin: statistics.defaultMin,
                            defaultStep: statistics.defaultStep,
                            values: stats,
                            measure: statistics.measure,
                          ),
                          SizedBox(height: 16.h),
                        ],
                      );
                    },
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
