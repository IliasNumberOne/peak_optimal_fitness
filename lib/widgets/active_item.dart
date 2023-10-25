import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:peak_optimal/utils/utils.dart';

class ActiveItems extends StatelessWidget {
  final String num;
  final String date;
  final String measure;
  final bool needAddNum;
  final String additionalNum;
  final VoidCallback? onTap;

  const ActiveItems({
    super.key,
    required this.num,
    required this.date,
    required this.measure,
    this.needAddNum = false,
    this.additionalNum = '',
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 28.w, right: 28.w, bottom: 16.h),
      child: Container(
        width: 332.w,
        height: 120.h,
        padding: EdgeInsets.symmetric(horizontal: 22.w, vertical: 16.h),
        decoration: BoxDecoration(
          color: ThemeColors.milk,
          borderRadius: BorderRadius.circular(32.r),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  date,
                  style: ThemeStyles.textStyle1,
                ),
                GestureDetector(
                  onTap: onTap,
                  child: Text('DELETE', style: ThemeStyles.textStyle8),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  num,
                  style: ThemeStyles.textStyle13,
                ),
                Text(
                  '  $measure',
                  style: ThemeStyles.textStyle12,
                ),
                SizedBox(width: 10.w),
                Visibility(
                  visible: needAddNum,
                  child: Text(
                    additionalNum,
                    style: ThemeStyles.textStyle11,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
