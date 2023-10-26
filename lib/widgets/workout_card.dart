import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:peak_optimal/models/workout.dart';
import 'package:peak_optimal/utils/utils.dart';
import 'package:peak_optimal/widgets/widgets.dart';

class WorkoutCard extends StatelessWidget {
  const WorkoutCard({
    super.key,
    this.onTap,
    required this.liked,
    required this.workout,
  });

  final VoidCallback? onTap;
  final bool liked;
  final Workout workout;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(32),
      child: Stack(
        children: [
          Image.asset(
            workout.image,
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    PremiumMark(premium: workout.premium),
                    Image.asset(
                      'assets/images/icons/like.png',
                      width: 24.w,
                      height: 24.h,
                      color: liked ? ThemeColors.red : null,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
                Text(
                  workout.name,
                  style: ThemeStyles.textStyle14.copyWith(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
