import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:peak_optimal/models/models.dart';
import 'package:peak_optimal/utils/utils.dart';

class ChartWidget extends StatefulWidget {
  const ChartWidget({
    super.key,
    required this.values,
    required this.measure,
    this.defaultMin = 10,
    this.defaultStep = 10,
  });

  final List<StatItem> values;
  final String measure;
  final int defaultMin;
  final int defaultStep;

  @override
  State<ChartWidget> createState() => _ChartWidgetState();
}

class _ChartWidgetState extends State<ChartWidget> {
  List<int> rates = [];
  int minValue = 0;
  int step = 0;
  int maxValue = 0;
  int count = 0;

  @override
  void initState() {
    super.initState();
    calculate();
  }

  void calculate() {
    rates.clear();
    minValue = widget.defaultMin;
    if (widget.values.isEmpty) {
      step = widget.defaultStep;
    } else {
      for (final item in widget.values) {
        if (maxValue < item.value) {
          maxValue = item.value.ceil();
        }
        if (minValue > item.value) {
          minValue = item.value.floor();
        }
      }

      final item = widget.defaultStep.toString().length;

      if (item >= 2) {
        maxValue = (maxValue / pow(item - 1)).ceil() * pow(item - 1);
      }
      print('object');
      print(maxValue);
      print('minValue $minValue');
      if ((widget.defaultStep).toString().length >= 2) {
        step = (((maxValue - minValue) / 60).ceil()) * pow(item - 1);
      } else {
        if ((maxValue - minValue).toString().length >= 2) {
          step = ((maxValue - minValue) ~/ 6) + 2;
        } else {
          step = ((maxValue - minValue) / 6).ceil();
        }
      }
      maxValue += step;
      if ((widget.defaultStep).toString().length >= 2) {
        step = (((maxValue - minValue) / 60).ceil()) * pow(item - 1);
      } else {
        if ((maxValue - minValue).toString().length >= 2) {
          step = ((maxValue - minValue) ~/ 6) + 2;
        } else {
          step = ((maxValue - minValue) / 6).ceil();
        }
      }
      if (step == 0) step = widget.defaultStep;
    }
    int item = minValue;
    for (int i = 6; i > 0; i--) {
      rates.add(item);
      item += step;
    }
    rates = rates.reversed.toList();
  }

  int pow(int a) {
    int s = 1;
    for (int i = 1; i <= a; i++) {
      s *= 10;
    }
    return s;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 340.w,
      height: 224.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          width: 1.sp,
          color: ThemeColors.gray.withOpacity(0.2),
        ),
      ),
      child: Stack(
        children: [
          Positioned.fill(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    6,
                    (index) {
                      final height = 221.h / 7;
                      final rate = rates[index];
                      return SizedBox(
                        height: height,
                        child: Center(
                          child: Text(
                            '$rate${widget.measure}',
                            style: ThemeStyles.textStyle7.copyWith(
                              color: ThemeColors.gray.withOpacity(0.2),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(width: 8.w),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: List.generate(
                      7,
                      (index) {
                        final height = 221.h / 7;
                        return Container(
                          width: double.infinity,
                          height: height,
                          decoration: BoxDecoration(
                            border: Border(
                              top: index == 0
                                  ? BorderSide.none
                                  : BorderSide(
                                      width: 1.sp,
                                      color: ThemeColors.gray.withOpacity(0.2),
                                    ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned.fill(
            child: Padding(
              padding: EdgeInsets.only(left: 64.w),
              child: Visibility(
                visible: widget.values.isNotEmpty,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: List.generate(
                      widget.values.length,
                      (index) {
                        final stat = widget.values[index];
                        final spacing = (221.h / 7);
                        final commonPercent = rates.first / step;
                        final commonHeight = spacing * commonPercent;
                        final percent = (commonPercent > 6)
                            ? (commonPercent - 6) / commonPercent
                            : 0;
                        final temp = (stat.value / rates.first) - percent;
                        return Padding(
                          padding: EdgeInsets.only(right: 12.w),
                          child: Container(
                            width: 40.w,
                            height: commonHeight * temp,
                            decoration: BoxDecoration(
                              color: ThemeColors.blue,
                              borderRadius: const BorderRadius.vertical(
                                top: Radius.circular(8),
                              ),
                            ),
                            alignment: Alignment.bottomCenter,
                            child: Text(
                              DateFormat('dd.MM').format(
                                stat.dateTime,
                              ),
                              style: ThemeStyles.textStyle15,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
