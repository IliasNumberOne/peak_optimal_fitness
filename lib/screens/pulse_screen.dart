import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:peak_optimal/providers/providers.dart';
import 'package:peak_optimal/utils/utils.dart';
import 'package:peak_optimal/widgets/custom_chart.dart';
import 'package:peak_optimal/widgets/custom_heart_bpm.dart';
import 'package:peak_optimal/widgets/widgets.dart';
import 'package:provider/provider.dart';

class PulseScreen extends StatefulWidget {
  const PulseScreen({super.key});

  @override
  State<PulseScreen> createState() => _PulseScreenState();
}

class _PulseScreenState extends State<PulseScreen> {
  @override
  void initState() {
    super.initState();
    const String alertText =
        'Place your finger on the main camera lens. Do not move your hand. It is best to take the measurement in good lighting conditions.';
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _showDialog(alertText);
    });
  }

  bool measured = false;
  bool measuring = false;
  List<SensorValue> data = [];
  List<SensorValue> bpmValues = [];
  int _bpmValue = 0;

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
                      'Pulse',
                      style: ThemeStyles.textStyle2,
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () async {
                  setState(() => measuring = true);
                  await Future.delayed(const Duration(seconds: 15));
                  activity.createPulse(_bpmValue);
                  _bpmValue = 0;
                  setState(() {
                    measuring = false;
                    measured = true;
                  });
                },
                child: Container(
                  width: 332.w,
                  height: 135.h,
                  padding: EdgeInsets.only(
                    top: 16.h,
                    bottom: 16.h,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(32.r),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 4,
                        color: ThemeColors.shadow,
                      ),
                    ],
                  ),
                  child: Column(
                    children: (measuring || measured)
                        ? [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('$_bpmValue',
                                    style: ThemeStyles.textStyle13),
                                Text(' bpm', style: ThemeStyles.textStyle12),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 4.h),
                              child: Text(
                                'Measured...',
                                style: ThemeStyles.textStyle6,
                              ),
                            ),
                            if (measuring && !measured)
                              HeartBPMDialog(
                                context: context,
                                alpha: 1,
                                onRawData: (value) {
                                  setState(() {
                                    if (data.length >= 100) data.removeAt(0);
                                    data.add(value);
                                  });
                                },
                                onBPM: (value) => setState(
                                  () {
                                    if (measuring) _bpmValue = value;
                                  },
                                ),
                              ),
                            SizedBox(
                              height: 28.h,
                              width: 332.w,
                              child: data.isEmpty
                                  ? const SizedBox()
                                  : BPMChart(data),
                            ),
                          ]
                        : [
                            Image.asset(
                              'assets/images/icons/heart.png',
                              width: 72.w,
                              height: 72.h,
                              fit: BoxFit.contain,
                            ),
                            SizedBox(height: 4.h),
                            Text(
                              'Start measuring',
                              style: ThemeStyles.textStyle9,
                            ),
                          ],
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              Expanded(
                child: activity.pulseList.isEmpty
                    ? const NoItems(
                        imgPath: 'assets/images/icons/no_pulse.png',
                        text:
                            "You have not yet added your \nheart rate to the app",
                      )
                    : ListView.builder(
                        itemCount: activity.pulseList.length,
                        itemBuilder: (BuildContext context, index) {
                          return ActiveItems(
                            num: activity.pulseList[index].num.toString(),
                            date: activity.pulseList[index].date,
                            measure: 'bpm',
                            onTap: () => activity
                                .deletePulse(activity.pulseList[index]),
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

  void _onBPM() async {
    setState(() => measuring = true);
    await Future.delayed(const Duration(seconds: 15));
    setState(() {
      measuring = false;
      measured = true;
    });
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
