import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:peak_optimal/utils/utils.dart';

class SettingsBtn extends StatelessWidget {
  final String text;
  const SettingsBtn({super.key, required this.text,});

  @override
  Widget build(BuildContext context) {
    return Container(
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
          text,
          textAlign: TextAlign.center,
          style: ThemeStyles.textStyle1,
        ),
      ),
    );
  }
}
