import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:peak_optimal/utils/utils.dart';

class CustomInput extends StatefulWidget {
  const CustomInput({
    super.key,
    required this.controller,
  });

  final TextEditingController controller;

  @override
  State<CustomInput> createState() => _CustomInputState();
}

class _CustomInputState extends State<CustomInput> {
  final _focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _focusNode.requestFocus,
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
            focusNode: _focusNode,
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
