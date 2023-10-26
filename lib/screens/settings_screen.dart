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
          child: const SettingsBtn(text: 'Privacy policy'),
        ),
        SizedBox(height: 16.h),
        GestureDetector(
          onTap: () {},
          child: const SettingsBtn(text: 'Terms of use'),
        ),
        SizedBox(height: 16.h),
        GestureDetector(
          onTap: () {},
          child: const SettingsBtn(text: 'Support'),
        ),
        SizedBox(height: 16.h),
        GestureDetector(
          onTap: () {},
          child: const SettingsBtn(text: 'Restore purchases'),
        ),
      ],
    );
  }
}
