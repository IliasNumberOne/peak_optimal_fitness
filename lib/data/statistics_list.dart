import 'package:peak_optimal/models/models.dart';

final List<Statistics> allStats = [
  Statistics(
    id: 0,
    name: 'Workout',
    measure: 'min',
    defaultMin: 10,
    defaultStep: 10,
  ),
  Statistics(
    id: 1,
    name: 'Sleep',
    measure: 'h',
    defaultMin: 6,
    defaultStep: 1,
  ),
  Statistics(
    id: 2,
    name: 'Weight',
    measure: 'kg',
    defaultMin: 40,
    defaultStep: 10,
  ),
  Statistics(
    id: 3,
    name: 'Pulse',
    measure: 'bpm',
    defaultMin: 70,
    defaultStep: 10,
  ),
];
