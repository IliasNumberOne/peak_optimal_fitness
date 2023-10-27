import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:peak_optimal/providers/providers.dart';
import 'package:peak_optimal/utils/utils.dart';
import 'package:peak_optimal/widgets/widgets.dart';
import 'package:provider/provider.dart';

class WaterScreen extends StatelessWidget {
  const WaterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ActivityProvider>(
      builder: (
        BuildContext context,
        ActivityProvider activity,
        Widget? child,
      ) {
        return Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 25.h, left: 28.w, bottom: 16.h),
              child: Row(
                children: [
                  const BackBtn(),
                  SizedBox(width: 8.w),
                  Text(
                    'Water',
                    style: ThemeStyles.textStyle2,
                  ),
                ],
              ),
            ),
            Container(
              width: 332.w,
              height: 210.h,
              decoration: BoxDecoration(
                color: ThemeColors.milk,
                borderRadius: BorderRadius.circular(32.r),
              ),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(
                      left: 24.w,
                      bottom: 12.h,
                      top: 16.h,
                    ),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Drinks ${activity.waterGlass}/8:',
                      style: ThemeStyles.textStyle1,
                    ),
                  ),
                  Expanded(
                    child: GridView.builder(
                      padding: EdgeInsets.only(
                          left: 28.w, right: 28.w, bottom: 16.h),
                      shrinkWrap: true,
                      itemCount: 8,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4,
                        crossAxisSpacing: 12.h,
                        mainAxisSpacing: 12.w,
                      ),
                      itemBuilder: (context, index) {
                        return Image.asset(
                          activity.waterGlass >= index + 1
                              ? 'assets/images/icons/glass_blue.png'
                              : 'assets/images/icons/glass.png',
                          fit: BoxFit.cover,
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16.h),
            GestureDetector(
              onTap: activity.drinkWater,
              child: Container(
                width: 200.w,
                height: 44.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16.r),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 4,
                      color: ThemeColors.shadow,
                    ),
                  ],
                ),
                child: Center(
                  child: Text(
                    'Drink',
                    style: ThemeStyles.textStyle8,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 52.w, vertical: 24.h),
              child: Text(
                'Press the button after each intake of water, a person should drink an average of 8 glasses of water per day',
                textAlign: TextAlign.center,
                style: ThemeStyles.textStyle4,
              ),
            ),
          ],
        );
      },
    );
  }
}
