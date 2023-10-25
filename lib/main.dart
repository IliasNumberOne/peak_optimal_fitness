import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:peak_optimal/data/data.dart';
import 'package:peak_optimal/providers/activity_provider.dart';
import 'package:peak_optimal/screens/screens.dart';
import 'package:peak_optimal/services/services.dart';
import 'package:peak_optimal/widgets/widgets.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final preference = await SharedPreferences.getInstance();
  final sqlService = SqlService();
  await sqlService.init();
  runApp(
    ScreenUtilInit(
      designSize: const Size(390, 844),
      builder: (context, child) {
        return PeakOptimal(
          preferences: preference,
          sqlService: sqlService,
        );
      },
    ),
  );
}

class PeakOptimal extends StatefulWidget {
  final SharedPreferences preferences;
  final SqlService sqlService;

  const PeakOptimal({
    Key? key,
    required this.preferences,
    required this.sqlService,
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
        GoRoute(
          path: '/splash_screen',
          pageBuilder: (context, state) {
            return buildPageWithDefaultTransition(
              context: context,
              state: state,
              child: const SplashScreen(),
            );
          },
        ),
        GoRoute(
          path: '/premium_screen',
          pageBuilder: (context, state) {
            return buildPageWithDefaultTransition(
              context: context,
              state: state,
              child: const PremiumScreen(),
            );
          },
        ),
        GoRoute(
          path: '/onboarding_screen',
          pageBuilder: (context, state) {
            return buildPageWithDefaultTransition(
              context: context,
              state: state,
              child: const OnboardingScreen(),
            );
          },
        ),
        ShellRoute(
          pageBuilder: (context, state, child) {
            final hasBottomBar = (state.fullPath != '/water_screen' &&
                state.fullPath != '/weight_screen' &&
                state.fullPath != '/sleep_screen' &&
                state.fullPath != '/pulse_screen');
            return buildPageWithDefaultTransition(
              context: context,
              state: state,
              child: BottomNavigation(
                currentPath: state.fullPath ?? '/',
                hasBottomBar: hasBottomBar,
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
                  child: const MainScreen(),
                );
              },
              routes: [
                GoRoute(
                  path: 'water_screen',
                  pageBuilder: (context, state) {
                    return buildPageWithDefaultTransition(
                      context: context,
                      state: state,
                      child: const WaterScreen(),
                    );
                  },
                ),
                GoRoute(
                  path: 'weight_screen',
                  pageBuilder: (context, state) {
                    return buildPageWithDefaultTransition(
                      context: context,
                      state: state,
                      child: const WeightScreen(),
                    );
                  },
                ),
                GoRoute(
                  path: 'sleep_screen',
                  pageBuilder: (context, state) {
                    return buildPageWithDefaultTransition(
                      context: context,
                      state: state,
                      child: const SleepScreen(),
                    );
                  },
                ),
                GoRoute(
                  path: 'pulse_screen',
                  pageBuilder: (context, state) {
                    return buildPageWithDefaultTransition(
                      context: context,
                      state: state,
                      child: const PulseScreen(),
                    );
                  },
                ),
              ],
            ),
            GoRoute(
              path: tapBarItems[1].path,
              pageBuilder: (context, state) {
                return buildPageWithDefaultTransition(
                  context: context,
                  state: state,
                  child: const Scaffold(),
                );
              },
            ),
            GoRoute(
              path: tapBarItems[2].path,
              pageBuilder: (context, state) {
                return buildPageWithDefaultTransition(
                  context: context,
                  state: state,
                  child: const Scaffold(),
                );
              },
            ),
            GoRoute(
              path: tapBarItems[3].path,
              pageBuilder: (context, state) {
                return buildPageWithDefaultTransition(
                  context: context,
                  state: state,
                  child: const Scaffold(),
                );
              },
            ),
          ],
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(
          create: (BuildContext context) =>
              PreferenceService(widget.preferences),
        ),
        Provider(
          create: (context) => ActivitiesService(widget.sqlService.database),
        ),
        ChangeNotifierProvider(
          create: (context) => ActivityProvider(
            preferenceService: context.read<PreferenceService>(),
            activitiesService: context.read<ActivitiesService>(),
          )..initState(),
        ),
      ],
      builder: (BuildContext context, Widget? child) {
        return MaterialApp.router(
          theme: ThemeData(fontFamily: 'NotoSansTamil'),
          routerConfig: _router,
        );
      },
    );
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
