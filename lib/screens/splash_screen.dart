import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 800), () {
      context.go('/onboarding_screen');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/splash.png',
      width: 390.w,
      height: 844.h,
      fit: BoxFit.cover,
    );
  }
}
