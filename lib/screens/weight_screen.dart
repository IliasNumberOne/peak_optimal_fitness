import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:peak_optimal/providers/providers.dart';
import 'package:peak_optimal/utils/utils.dart';
import 'package:peak_optimal/widgets/widgets.dart';
import 'package:provider/provider.dart';

class WeightScreen extends StatefulWidget {
  const WeightScreen({super.key});

  @override
  State<WeightScreen> createState() => _WeightScreenState();
}

class _WeightScreenState extends State<WeightScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    const String alertText =
        'Enter your weight every morning before breakfast to get the correct data';
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _showDialog(alertText);
    });
  }

  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Consumer<ActivityProvider>(
      builder: (
        BuildContext context,
        ActivityProvider activity,
        Widget? child,
      ) {
        return SafeArea(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 25.h, left: 28.w, bottom: 16.h),
                child: Row(
                  children: [
                    const BackBtn(),
                    SizedBox(width: 8.w),
                    Text(
                      'Weight',
                      style: ThemeStyles.textStyle2,
                    ),
                  ],
                ),
              ),
              Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.bottomCenter,
                children: [
                  SizedBox(height: 178.h),
                  Positioned(
                    bottom: 22.h,
                    child: Container(
                      width: 332.w,
                      height: 156.h,
                      padding: EdgeInsets.only(
                        top: 16.h,
                        bottom: 36.h,
                        left: 22.w,
                        right: 22.w,
                      ),
                      decoration: BoxDecoration(
                        color: ThemeColors.milk,
                        borderRadius: BorderRadius.circular(32.r),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Your weight:',
                            style: ThemeStyles.textStyle1,
                          ),
                          SizedBox(height: 12.h),
                          CustomInput(controller: controller),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      if (controller.text.isNotEmpty) {
                        activity.createWeight(double.parse(controller.text));
                        controller.clear();
                      }
                    },
                    child: Container(
                      width: 200.w,
                      height: 44.h,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 4,
                            color: ThemeColors.shadow,
                          ),
                        ],
                      ),
                      child: Center(
                        child: Text(
                          'ADD',
                          style: TextStyle(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w700,
                            color: controller.text.isEmpty
                                ? ThemeColors.gray
                                : ThemeColors.orange,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.h),
              Expanded(
                child: activity.weightList.isEmpty
                    ? const NoItems(
                        imgPath: 'assets/images/icons/no_weight.png',
                        text: "You haven't added your weight to the app yet",
                      )
                    : ListView.builder(
                        itemCount: activity.weightList.length,
                        itemBuilder: (BuildContext context, index) {
                          return ActiveItems(
                            num: activity.weightList[index].num.toString(),
                            date: activity.weightList[index].date,
                            measure: 'kg',
                            needAddNum: true,
                            additionalNum:
                                "${activity.weightList[index].additionalNum} kg",
                            onTap: () => activity
                                .deleteWeight(activity.weightList[index]),
                          );
                        },
                      ),
              ),
            ],
          ),
        );
      },
    );
  }

  void _showDialog(String alertText) async {
    await showCupertinoDialog(
      context: context,
      builder: (BuildContext context) => CupertinoAlertDialog(
        title: const Text("Important"),
        content: Text(
          alertText,
        ),
        actions: <CupertinoDialogAction>[
          CupertinoDialogAction(
            isDefaultAction: true,
            onPressed: context.pop,
            child: const Text('Ok'),
          )
        ],
      ),
    );
  }
}
