import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:peak_optimal/data/data.dart';
import 'package:peak_optimal/utils/utils.dart';

class ActivityCard extends StatelessWidget {
  final String number;
  final String lastDate;
  final String weightDiff;
  final Activity activity;

  const ActivityCard({
    super.key,
    String? number,
    String? lastDate,
    String? weightDiff,
    required this.activity,
  })  : number = number ?? '0.0',
        lastDate = lastDate ?? '',
        weightDiff = weightDiff ?? '0.0';

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.go('/${activity.screenPath}'),
      child: Container(
        width: 332.w,
        height: 120.h,
        padding: EdgeInsets.symmetric(horizontal: 22.w, vertical: 16.h),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(32),
          boxShadow: [
            BoxShadow(
              blurRadius: 8,
              color: Colors.black.withOpacity(0.25),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      activity.icon,
                      width: 24.w,
                      height: 24.h,
                    ),
                    SizedBox(width: 4.w),
                    Text(
                      activity.name,
                      style: ThemeStyles.textStyle1,
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'Latest addition:',
                      style: ThemeStyles.textStyle4,
                    ),
                    Visibility(
                      visible: true,
                      child: Text(
                        lastDate,
                        style: ThemeStyles.textStyle4,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  number,
                  style: ThemeStyles.textStyle10,
                ),
                Text(
                  '  ${activity.measure}',
                  style: ThemeStyles.textStyle9,
                ),
                SizedBox(width: 10.w),
                Visibility(
                  visible: activity.id == 2,
                  child: Text(
                    '$weightDiff kg',
                    style: ThemeStyles.textStyle11,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
