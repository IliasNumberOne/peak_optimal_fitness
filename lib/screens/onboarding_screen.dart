import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:peak_optimal/utils/theme_helper.dart';
import 'package:peak_optimal/widgets/widgets.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int currentIndex = 0;
  final controller = PageController();

  final List<String> titles = [
    'Take care of your heart!',
    'Controlling your figure!',
    'Track your progress!',
  ];

  final List<String> bodies = [
    """Instantly measure your heart rate with our app.
With our application you are always aware of your heart rate. """,
    """Track your weight and achieve your goals. The journey to an ideal figure begins with us! Track your weight and achieve your fitness goals.""",
    """Track your progress and get better every day. Our app helps you track your progress and reach new heights.""",
  ];

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 25.h),
            Expanded(
              child: PageView(
                controller: controller,
                onPageChanged: (index) => currentIndex = index,
                physics: const NeverScrollableScrollPhysics(),
                children: List.generate(
                  titles.length,
                  (index) {
                    final title = titles[index];
                    final body = bodies[index];
                    return _buildBody(title, body);
                  },
                ),
              ),
            ),
            CustomButton(
              text: 'Next',
              onTap: () {
                if (currentIndex == titles.length - 1) {
                  context.go('/premium_screen');
                  return;
                }
                controller.nextPage(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                );
              },
            ),
            SizedBox(height: 102.h),
          ],
        ),
      ),
    );
  }

  Widget _buildBody(String title, String body) {
    return Column(
      children: [
        Text(
          title,
          style: ThemeStyles.textStyle14,
        ),
        SizedBox(height: 20.h),
        Image.asset(
          'assets/images/yoga.png',
          width: 390.w,
          height: 240.h,
          fit: BoxFit.cover,
        ),
        SizedBox(height: 20.h),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 29.w),
          child: Text(
            body,
            style: ThemeStyles.textStyle12,
          ),
        ),
      ],
    );
  }
}
