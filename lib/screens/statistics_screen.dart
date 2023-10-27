import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:peak_optimal/data/data.dart';
import 'package:peak_optimal/utils/theme_helper.dart';
import 'package:peak_optimal/widgets/widgets.dart';

class StatisticsScreen extends StatelessWidget {
  const StatisticsScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
              itemCount: allStats.length,
              itemBuilder: (context, index) {
                final statistics = allStats[index];
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
                      values: const [],
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
  }
}
