import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:peak_optimal/data/categories.dart';
import 'package:peak_optimal/providers/workout_provider.dart';
import 'package:peak_optimal/utils/theme_helper.dart';
import 'package:provider/provider.dart';

class WorkoutsScreen extends StatelessWidget {
  const WorkoutsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<WorkoutProvider>(
      builder: (
        BuildContext context,
        WorkoutProvider value,
        Widget? child,
      ) {
        return Column(
          children: [
            SizedBox(height: 25.h),
            SizedBox(
              width: 332.w,
              child: Text(
                'Workout',
                style: ThemeStyles.textStyle14,
              ),
            ),
            SizedBox(height: 16.h),
            SizedBox(
              height: 20.sp,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.symmetric(horizontal: 29.w),
                child: Row(
                  children: List.generate(
                    categories.length,
                    (index) {
                      final selected = index == 0;
                      final category = categories[index];
                      final gradient = selected
                          ? ThemeColors.gradient1
                          : ThemeColors.gradient2;
                      return Padding(
                        padding: EdgeInsets.only(right: 12.w),
                        child: ShaderMask(
                          shaderCallback: (Rect bounds) {
                            return gradient.createShader(bounds);
                          },
                          child: Text(
                            category.name,
                            style: ThemeStyles.textStyle8.copyWith(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
            SizedBox(height: 20.h),
            ClipRRect(
              borderRadius: BorderRadius.circular(32),
              child: Stack(
                children: [
                  Image.asset(
                    'assets/images/workouts/image1.png',
                    width: 332.w,
                    height: 200.h,
                    fit: BoxFit.cover,
                  ),
                  Container(
                    width: 332.w,
                    height: 200.h,
                    decoration: BoxDecoration(
                      gradient: ThemeColors.gradient3,
                    ),
                    padding: EdgeInsets.symmetric(
                      vertical: 16.h,
                      horizontal: 24.w,
                    ),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 12.w,
                            vertical: 4.h,
                          ),
                          decoration: BoxDecoration(
                            color: ThemeColors.milk,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Text(
                            'FREE',
                            style: ThemeStyles.textStyle7.copyWith(
                              color: ThemeColors.dark,
                              height: 16 / 13,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
