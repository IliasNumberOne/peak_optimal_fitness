import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:peak_optimal/utils/utils.dart';
import 'package:peak_optimal/widgets/widgets.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 25.h),
        Padding(
          padding: EdgeInsets.only(left: 28.w, bottom: 20.h),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Settings',
              style: ThemeStyles.textStyle2,
            ),
          ),
        ),
        const PremiumCard(),
        SizedBox(height: 16.h),
        GestureDetector(
          onTap: () {},
          child: Container(
            width: 332.w,
            height: 56.h,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  blurRadius: 8,
                  color: Colors.black.withOpacity(0.25),
                ),
              ],
            ),
            child: Center(
              child: Text(
                'Privacy policy',
                textAlign: TextAlign.center,
                style: ThemeStyles.textStyle1,
              ),
            ),
          ),
        ),
        SizedBox(height: 16.h),
        GestureDetector(
          onTap: () {},
          child: Container(
            width: 332.w,
            height: 56.h,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  blurRadius: 8,
                  color: Colors.black.withOpacity(0.25),
                ),
              ],
            ),
            child: Center(
              child: Text(
                'Terms of use',
                textAlign: TextAlign.center,
                style: ThemeStyles.textStyle1,
              ),
            ),
          ),
        ),
        SizedBox(height: 16.h),
        GestureDetector(
          onTap: () {},
          child: Container(
            width: 332.w,
            height: 56.h,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  blurRadius: 8,
                  color: Colors.black.withOpacity(0.25),
                ),
              ],
            ),
            child: Center(
              child: Text(
                'Support',
                textAlign: TextAlign.center,
                style: ThemeStyles.textStyle1,
              ),
            ),
          ),
        ),
        SizedBox(height: 16.h),
        GestureDetector(
          onTap: () {},
          child: Container(
            width: 332.w,
            height: 56.h,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  blurRadius: 8,
                  color: Colors.black.withOpacity(0.25),
                ),
              ],
            ),
            child: Center(
              child: Text(
                'Restore purchases',
                textAlign: TextAlign.center,
                style: ThemeStyles.textStyle1,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
