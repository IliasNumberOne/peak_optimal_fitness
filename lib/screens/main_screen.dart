import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:peak_optimal/data/activities.dart';
import 'package:peak_optimal/providers/providers.dart';
import 'package:peak_optimal/utils/utils.dart';
import 'package:peak_optimal/widgets/widgets.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ActivityProvider>(
      builder: (
        BuildContext context,
        ActivityProvider activity,
        Widget? child,
      ) {
        return SafeArea(
          child: Column(
            children: [
              SizedBox(height: 25.h),
              Padding(
                padding: EdgeInsets.only(left: 28.w),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Main',
                    style: ThemeStyles.textStyle2,
                  ),
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: SizedBox(
                    width: 390.w,
                    child: Column(
                      children: [
                        SizedBox(height: 16.h),
                        const PremiumCard(),
                        SizedBox(height: 20.h),
                        ActivityCard(
                          activity: activities[0],
                          number: (activity.waterGlass * 0.25).toString(),
                          lastDate: activity.waterActivity[1],
                        ),
                        SizedBox(height: 16.h),
                        ActivityCard(
                          activity: activities[1],
                          number: activity.sleepList.lastOrNull?.num,
                          lastDate: activity.sleepList.lastOrNull?.date,
                        ),
                        SizedBox(height: 16.h),
                        ActivityCard(
                          activity: activities[2],
                          number: activity.weightList.lastOrNull?.num.toString(),
                          lastDate: activity.weightList.lastOrNull?.date,
                          weightDiff:
                              activity.weightList.lastOrNull?.additionalNum,
                        ),
                        SizedBox(height: 16.h),
                        ActivityCard(
                          activity: activities[3],
                        ),
                        SizedBox(height: 16.h),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
