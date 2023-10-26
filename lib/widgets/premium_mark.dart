import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:peak_optimal/utils/utils.dart';

class PremiumMark extends StatelessWidget {
  const PremiumMark({
    super.key,
    required this.premium,
  });

  final bool premium;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 12.w,
        vertical: 4.h,
      ),
      decoration: BoxDecoration(
        color: premium ? Colors.white : ThemeColors.milk,
        borderRadius: BorderRadius.circular(12),
        gradient: premium ? ThemeColors.gradient1 : null,
      ),
      child: Text(
        premium ? 'PRO' : 'FREE',
        style: ThemeStyles.textStyle7.copyWith(
          color: ThemeColors.dark,
          height: 15.6 / 13,
        ),
      ),
    );
  }
}
