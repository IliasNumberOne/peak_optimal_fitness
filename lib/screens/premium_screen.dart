import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:peak_optimal/utils/theme_helper.dart';
import 'package:peak_optimal/widgets/widgets.dart';

class PremiumScreen extends StatelessWidget {
  const PremiumScreen({
    super.key,
    this.onClose,
  });

  final VoidCallback? onClose;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 25.h),
            SizedBox(
              width: 332.w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Premium',
                    style: ThemeStyles.textStyle14,
                  ),
                  Text(
                    'Restore purchases',
                    style: ThemeStyles.textStyle7,
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.h),
            Image.asset(
              'assets/images/yoga2.png',
              width: 390.w,
              height: 240.h,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 20.h),
            SizedBox(
              width: 332.w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "GET\nACCESS TO:",
                    style: ThemeStyles.textStyle14.copyWith(
                      color: ThemeColors.blue,
                    ),
                  ),
                  SizedBox(height: 20.h),
                  Text(
                    '• Weight tracker',
                    style: ThemeStyles.textStyle12,
                  ),
                  SizedBox(height: 8.h),
                  Text(
                    '• Pulse tracker',
                    style: ThemeStyles.textStyle12,
                  ),
                  SizedBox(height: 8.h),
                  Text(
                    '• All workouts',
                    style: ThemeStyles.textStyle12,
                  ),
                  SizedBox(height: 8.h),
                  Text(
                    '• No advertising ',
                    style: ThemeStyles.textStyle12,
                  ),
                ],
              ),
            ),
            const Spacer(),
            CustomButton(
              text: 'Buy premium for \$0,99',
              onTap: () {},
            ),
            SizedBox(
              height: 102.h,
              child: Column(
                children: [
                  SizedBox(height: 16.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Privacy policy',
                        style: ThemeStyles.textStyle7,
                      ),
                      SizedBox(width: 24.w),
                      Text(
                        'Terms of use',
                        style: ThemeStyles.textStyle7,
                      ),
                    ],
                  ),
                  SizedBox(height: 16.h),
                  GestureDetector(
                    onTap: (onClose ?? context.pop),
                    child: Image.asset(
                      'assets/images/no_thanks.png',
                      height: 24.h,
                      fit: BoxFit.contain,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
