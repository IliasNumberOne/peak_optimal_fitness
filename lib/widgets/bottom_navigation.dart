import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:peak_optimal/data/data.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({
    Key? key,
    required this.child,
    this.hasBottomBar = true,
    this.hasSafeArea = true,
    required this.currentPath,
  }) : super(key: key);

  final Widget child;
  final bool hasBottomBar;
  final String currentPath;
  final bool hasSafeArea;

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  void _onTap(int index, String path) {
    setState(() {
      context.go(path);
    });
  }

  @override
  Widget build(BuildContext context) {
    final overlay = MediaQuery.of(context).padding;
    return Material(
      child: Column(
        children: [
          Expanded(
            child: SafeArea(
              top: widget.hasSafeArea,
              bottom: widget.hasSafeArea,
              left: widget.hasSafeArea,
              right: widget.hasSafeArea,
              child: widget.child,
            ),
          ),
          Visibility(
            visible: widget.hasBottomBar,
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeInOut,
              width: 390.w,
              height: 54.h + overlay.bottom,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(28.r),
                  topRight: Radius.circular(28.r),
                ),
                color: Colors.transparent,
              ),
              alignment: Alignment.topCenter,
              child: Container(
                height: 54.h,
                alignment: Alignment.bottomCenter,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/bottom_navigation.png'),
                    fit: BoxFit.fill,
                  ),
                ),
                padding: EdgeInsets.only(
                  right: 48.w,
                  left: 48.w,
                  bottom: 6.h,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(
                    tapBarItems.length,
                    (index) => GestureDetector(
                      onTap: () => _onTap(index, tapBarItems[index].path),
                      child: Image.asset(
                        widget.currentPath == tapBarItems[index].path
                            ? tapBarItems[index].selectedImg
                            : tapBarItems[index].regularImg,
                        width: 28.w,
                        height: 28.h,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
