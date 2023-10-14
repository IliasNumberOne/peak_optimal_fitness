import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:peak_optimal/data/data.dart';
import 'package:peak_optimal/widgets/widgets.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final preference = await SharedPreferences.getInstance();
  runApp(
    ScreenUtilInit(
      designSize: const Size(390, 844),
      builder: (context, child) {
        return PeakOptimal(
          preferences: preference,
        );
      },
    ),
  );
}

class PeakOptimal extends StatefulWidget {
  final SharedPreferences preferences;

  const PeakOptimal({
    Key? key,
    required this.preferences,
  }) : super(key: key);

  @override
  State<PeakOptimal> createState() => _PeakOptimalState();
}

class _PeakOptimalState extends State<PeakOptimal> {
  late GoRouter _router;

  @override
  void initState() {
    super.initState();
    _router = GoRouter(
      initialLocation: '/',
      routes: [
        ShellRoute(
          pageBuilder: (context, state, child) {
            return buildPageWithDefaultTransition(
              context: context,
              state: state,
              child: BottomNavigation(
                currentPath: state.fullPath ?? '/',
                child: child,
              ),
            );
          },
          routes: [
            GoRoute(
              path: tapBarItems[0].path,
              pageBuilder: (context, state) {
                return buildPageWithDefaultTransition(
                  context: context,
                  state: state,
                  child: Scaffold(),
                );
              },
            )
          ],
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [],
        builder: (BuildContext context, Widget? child) {
          return MaterialApp.router(
            theme: ThemeData(fontFamily: 'NotoSansTamil'),
            routerConfig: _router,
          );
        });
  }
}

CustomTransitionPage buildPageWithDefaultTransition({
  required BuildContext context,
  required GoRouterState state,
  required Widget child,
  bool opaque = true,
}) {
  return CustomTransitionPage(
    key: state.pageKey,
    child: child,
    transitionDuration: Duration.zero,
    opaque: opaque,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return FadeTransition(
        opacity: animation,
        child: child,
      );
    },
  );
}
