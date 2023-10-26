import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:peak_optimal/utils/utils.dart';
import 'package:peak_optimal/widgets/widgets.dart';
import 'package:peak_optimal/widgets/workout_btn.dart';

class WorkoutScreen extends StatelessWidget {
  final bool liked;

  const WorkoutScreen({super.key, this.liked = false});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 190.h),
          child: Image.asset(
            'assets/images/workouts/big_image1.png',
            width: 390.w,
            height: 630.h,
            fit: BoxFit.cover,
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
                  Image.asset(
                    'assets/images/icons/like.png',
                    width: 24.w,
                    height: 24.h,
                    color: liked ? ThemeColors.red : null,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
          ),
        ),
        Container(
          height: 300.h,
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
                'GET FULL \nACCESS',
                style: ThemeStyles.textStyle2,
              ),
              SizedBox(height: 8.h),
              Expanded(
                child: Text(
                  'GET FULLGET FULLGET FULLGET FULL ACCESS',
                  style: ThemeStyles.textStyle1
                      .copyWith(fontWeight: FontWeight.w400),
                ),
              ),
              WorkoutBtn(text: 'Start'),
            ],
          ),
        ),
      ],
    );
  }
}
