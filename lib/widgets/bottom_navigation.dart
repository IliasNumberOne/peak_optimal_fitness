import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:peak_optimal/data/data.dart';

class BottomNavigation extends StatefulWidget {
  final Widget child;
  final bool hasBottomBar;
  final String currentPath;

  const BottomNavigation({
    Key? key,
    required this.child,
    this.hasBottomBar = true,
    required this.currentPath,
  }) : super(key: key);

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
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          Expanded(child: widget.child),
          Visibility(
            visible: widget.hasBottomBar,
            child: AnimatedContainer(
              duration: Duration(milliseconds: 500),
              curve: Curves.easeInOut,
              child: Container(
                width: 294.w,
                height: 88.h,
                alignment: Alignment.topCenter,
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
                        width: 52.w,
                        height: 52.h,
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
