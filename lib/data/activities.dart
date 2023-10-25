import 'package:peak_optimal/models/models.dart';

final List<Activity> activities = [
  const Activity(
    id: 0,
    name: 'Water',
    icon: 'assets/images/activity_icons/water.png',
    screenPath: 'water_screen',
    measure: 'L',
  ),
  const Activity(
    id: 1,
    name: 'Sleep',
    icon: 'assets/images/activity_icons/sleep.png',
    screenPath: 'sleep_screen',
    measure: 'h',
  ),
  const Activity(
    id: 2,
    name: 'Weight',
    icon: 'assets/images/activity_icons/weight.png',
    screenPath: 'weight_screen',
    measure: 'kg',
  ),
  const Activity(
    id: 3,
    name: 'Pulse',
    icon: 'assets/images/activity_icons/pulse.png',
    screenPath: 'pulse_screen',
    measure: 'bpm',
  ),
];
