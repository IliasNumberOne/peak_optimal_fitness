import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:peak_optimal/utils/utils.dart';

class NoItems extends StatelessWidget {
  final String imgPath;
  final String text;
  final bool isVisible;
  const NoItems({super.key, required this.imgPath, required this.text, this.isVisible = true});

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: isVisible,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              imgPath,
              width: 200.w,
              height: 200.h,
            ),
            SizedBox(height: 20.h),
            Text(
              text,
              textAlign: TextAlign.center,
              style: ThemeStyles.textStyle5
                  .copyWith(fontWeight: FontWeight.w400),
            ),
          ],
        ),
      ),
    );
  }
}
