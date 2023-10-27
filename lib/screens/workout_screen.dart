import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:peak_optimal/providers/workout_provider.dart';
import 'package:peak_optimal/utils/utils.dart';
import 'package:peak_optimal/widgets/widgets.dart';
import 'package:peak_optimal/widgets/workout_btn.dart';
import 'package:provider/provider.dart';

class WorkoutScreen extends StatelessWidget {
  const WorkoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<WorkoutProvider>(
      builder: (BuildContext context, value, Widget? child) {
        final workout = value.workout;
        final liked = value.favorites.contains(workout.id);
        final start = value.step == -1;
        final next =
            value.step >= 0 && value.step < value.workout.steps.length - 1;
        final finish = value.step == value.workout.steps.length - 1;
        final text = start
            ? 'START'
            : next
                ? 'Next'
                : 'Finish';
        final title = start ? workout.name : "STEP ${value.step + 1}";
        final body = start ? workout.description : workout.steps[value.step];
        return Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 190.h),
              child: Image.asset(
                workout.bigImage,
                width: 390.w,
                height: 630.h,
                fit: BoxFit.cover,
              ),
            ),
            Positioned.fill(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: 457.h),
                    Container(
                      padding: EdgeInsets.only(
                        top: 25.h,
                        left: 28.w,
                        right: 30.w,
                        bottom: 12.h,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(44.r),
                          topRight: Radius.circular(44.r),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            title,
                            style: ThemeStyles.textStyle2,
                          ),
                          SizedBox(height: 8.h),
                          Text(
                            body,
                            style: ThemeStyles.textStyle1
                                .copyWith(fontWeight: FontWeight.w400),
                          ),
                          SizedBox(height: 96.h),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 0,
              child: Container(
                width: 390.w,
                height: 200.h,
                decoration: BoxDecoration(
                  gradient: ThemeColors.gradient4,
                ),
                child: Padding(
                  padding: EdgeInsets.only(
                    top: 55.h,
                    left: 28.w,
                    right: 22.w,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const BackBtn(),
                          SizedBox(width: 8.w),
                          Text(
                            'Workout',
                            style: ThemeStyles.textStyle2,
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: () => value.onLike(workout),
                        child: Image.asset(
                          'assets/images/icons/like.png',
                          width: 24.w,
                          height: 24.h,
                          color: liked ? ThemeColors.red : null,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 12.h,
              child: WorkoutBtn(
                text: text,
                onTap: () {
                  value.nextStep();
                  if(finish) context.pop();
                },
              ),
            ),
          ],
        );
      },
    );
  }
}
