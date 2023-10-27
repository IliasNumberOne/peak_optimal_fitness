import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:peak_optimal/utils/utils.dart';

class PremiumCard extends StatelessWidget {
  const PremiumCard({
    super.key,
    this.onTap,
  });

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 332.w,
        height: 155.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32.r),
          image: const DecorationImage(
              image: AssetImage('assets/images/premium_card.png'),
              fit: BoxFit.cover),
        ),
        child: Padding(
          padding: const EdgeInsets.all(32),
          child: Text(
            'GET FULL \nACCESS',
            style: ThemeStyles.textStyle3,
          ),
        ),
      ),
    );
  }
}
