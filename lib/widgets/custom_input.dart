import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:peak_optimal/utils/utils.dart';

class CustomInput extends StatefulWidget {
  const CustomInput({
    super.key,
    required this.controller,
    required this.focusNode,
    this.update,
  });

  final TextEditingController controller;
  final FocusNode focusNode;
  final VoidCallback? update;

  @override
  State<CustomInput> createState() => _CustomInputState();
}

class _CustomInputState extends State<CustomInput> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.focusNode.requestFocus,
      child: Container(
        width: 286.w,
        height: 48.h,
        padding: EdgeInsets.symmetric(horizontal: 12.w),
        decoration: BoxDecoration(
          border: Border.all(color: ThemeColors.gray),
          borderRadius: BorderRadius.circular(20.r),
        ),
        child: Center(
          child: TextField(
            focusNode: widget.focusNode,
            controller: widget.controller,
            keyboardType: TextInputType.number,
            decoration: InputDecoration.collapsed(
              hintText: 'Your weight',
              hintStyle: ThemeStyles.textStyle6,
            ),
          ),
        ),
      ),
    );
  }
}
