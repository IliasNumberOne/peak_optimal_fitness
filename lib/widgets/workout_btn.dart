import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:peak_optimal/utils/theme_helper.dart';

class WorkoutBtn extends StatelessWidget {
  final String text;
  final VoidCallback? onTap;
  const WorkoutBtn({super.key, required this.text, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 332.w,
        height: 56.h,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16.r),
          boxShadow: [
            BoxShadow(
              blurRadius: 8,
              color: Colors.black.withOpacity(0.25),
            ),
          ],
        ),
        child: Center(
          child: Text(
            text,
            style: ThemeStyles.textStyle9,
          ),
        ),
      ),
    );
  }
}
