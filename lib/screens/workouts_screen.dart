import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:peak_optimal/data/categories.dart';
import 'package:peak_optimal/providers/workout_provider.dart';
import 'package:peak_optimal/utils/theme_helper.dart';
import 'package:peak_optimal/widgets/widgets.dart';
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
                      final category = categories[index];
                      final selected = value.category == category;
                      final gradient = selected
                          ? ThemeColors.gradient1
                          : ThemeColors.gradient2;
                      return Padding(
                        padding: EdgeInsets.only(right: 12.w),
                        child: ShaderMask(
                          shaderCallback: (Rect bounds) {
                            return gradient.createShader(bounds);
                          },
                          child: GestureDetector(
                            onTap: () => value.changeCategory(category),
                            child: Text(
                              category.name,
                              style: ThemeStyles.textStyle8.copyWith(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: value.workouts.length,
                padding: EdgeInsets.symmetric(
                  horizontal: 29.w,
                  vertical: 20.h,
                ),
                itemBuilder: (context, index) {
                  final workout = value.workouts[index];
                  final liked = value.favorites.contains(workout.id);
                  return Padding(
                    padding: EdgeInsets.only(bottom: 16.h),
                    child: WorkoutCard(
                      liked: liked,
                      workout: workout,
                      onLike: () => value.onLike(workout),
                      onTap: () {
                        value.setWorkout(workout);
                        context.go('/workouts_screen/workout_screen');
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        );
      },
    );
  }
}
