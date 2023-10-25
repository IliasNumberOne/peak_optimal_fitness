import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:peak_optimal/providers/providers.dart';
import 'package:peak_optimal/utils/utils.dart';
import 'package:peak_optimal/widgets/widgets.dart';
import 'package:provider/provider.dart';

class SleepScreen extends StatefulWidget {
  const SleepScreen({super.key});

  @override
  State<SleepScreen> createState() => _SleepScreenState();
}

class _SleepScreenState extends State<SleepScreen> {
  @override
  void initState() {
    super.initState();
    const String alertText =
        'Add your time when you lay down and when you get up and try to keep to the same pace';
    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        _showPreDialog(alertText);
      },
    );
  }

  void _showDialog() {
    showCupertinoModalPopup<void>(
      context: context,
      builder: (BuildContext context) => Container(
        height: 216,
        padding: const EdgeInsets.only(top: 6.0),
        margin: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        color: CupertinoColors.systemBackground.resolveFrom(context),
        child: SafeArea(
          top: false,
          child: CupertinoDatePicker(
            initialDateTime: time,
            use24hFormat: true,
            mode: CupertinoDatePickerMode.time,
            // This is called when the user changes the dateTime.
            onDateTimeChanged: (DateTime newTime) {
              setState(() {
                _bedTime = DateFormat.Hm().format(newTime).toString();
              });
            },
          ),
        ),
      ),
    );
  }

  DateTime time = DateTime(2016, 5, 10, 00, 00);
  String _bedTime = '';
  String _risingTime = '';

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
                      'Sleep',
                      style: ThemeStyles.textStyle2,
                    ),
                  ],
                ),
              ),
              Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.bottomCenter,
                children: [
                  SizedBox(height: 244.h),
                  Positioned(
                    bottom: 22.h,
                    child: Container(
                      width: 332.w,
                      height: 200.h,
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
                            'Your sleep:',
                            style: ThemeStyles.textStyle1,
                          ),
                          SizedBox(height: 12.h),
                          GestureDetector(
                            onTap: _showDialog,
                            child: Container(
                              width: 286.w,
                              height: 48.h,
                              padding: EdgeInsets.only(left: 12.w),
                              decoration: BoxDecoration(
                                border: Border.all(color: ThemeColors.gray),
                                borderRadius: BorderRadius.circular(20.r),
                              ),
                              alignment: Alignment.centerLeft,
                              child: Text(
                                _bedTime.isEmpty ? 'Bedtime' : _bedTime,
                                style: TextStyle(
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w400,
                                  color: _bedTime.isEmpty
                                      ? ThemeColors.gray
                                      : ThemeColors.dark,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 12.h),
                          GestureDetector(
                            onTap: _showDialog,
                            child: Container(
                              width: 286.w,
                              height: 48.h,
                              padding: EdgeInsets.only(left: 12.w),
                              decoration: BoxDecoration(
                                border: Border.all(color: ThemeColors.gray),
                                borderRadius: BorderRadius.circular(20.r),
                              ),
                              alignment: Alignment.centerLeft,
                              child: Text(
                                _risingTime.isEmpty
                                    ? 'Rising time'
                                    : _risingTime,
                                style: TextStyle(
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w400,
                                  color: _risingTime.isEmpty
                                      ? ThemeColors.gray
                                      : ThemeColors.dark,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      if (_bedTime.isNotEmpty && _risingTime.isNotEmpty) {
                        activity.createSleep(_bedTime, _risingTime);
                        _bedTime = '';
                        _risingTime = '';
                        setState(() {});
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
                            color: _bedTime.isNotEmpty && _risingTime.isNotEmpty
                                ? ThemeColors.orange
                                : ThemeColors.gray,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.h),
              Expanded(
                child: activity.sleepList.isEmpty
                    ? const NoItems(
                        imgPath: 'assets/images/icons/no_sleep.png',
                        text: "You haven't added your dream to the app yet",
                      )
                    : ListView.builder(
                        itemCount: activity.sleepList.length,
                        itemBuilder: (BuildContext context, index) {
                          return ActiveItems(
                            num: activity.sleepList[index].num,
                            date: activity.sleepList[index].date,
                            measure: 'h',
                            needAddNum: true,
                            additionalNum:
                                '${activity.sleepList[index].bedTime} - ${activity.sleepList[index].risingTime}',
                            onTap: () =>
                                activity.deleteSleep(activity.sleepList[index]),
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

  void _showPreDialog(String alertText) async {
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
