import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';
import 'package:peak_optimal/models/models.dart';
import 'package:peak_optimal/services/activitites_service.dart';
import 'package:peak_optimal/services/preference_service.dart';

class StatisticsProvider extends ChangeNotifier {
  final PreferencesService _preferencesService;
  final ActivitiesService _activitiesService;

  StatisticsProvider({
    required PreferencesService preferencesService,
    required ActivitiesService activitiesService,
  })  : _preferencesService = preferencesService,
        _activitiesService = activitiesService;

  List<StatItem> _workoutStats = [];

  List<StatItem> _sleepStats = [];

  List<StatItem> _weightStats = [];

  List<StatItem> _pulseStats = [];

  List<List<StatItem>> _allStats = [];

  List<List<StatItem>> get allStats => _allStats;

  void init() async {
    final workoutDates = _preferencesService.getDates();
    for (final date in workoutDates) {
      final temp = _preferencesService.getWorkoutsByDate(date);
      final rand = Random().nextBool() ? 10 : 12;
      final stat = StatItem(
        dateTime: date,
        value: (temp.length * rand).toDouble(),
      );
      _workoutStats.add(stat);
    }
    final sleeps = await _activitiesService.getAllSleep();
    for (final sleep in sleeps) {
      final hours = int.parse(sleep.num.split(':')[0]);
      final minutes = int.parse(sleep.num.split(':')[1]);
      final stat = StatItem(
        dateTime: DateFormat("dd.MM.yyyy").parse(sleep.date),
        value: hours + minutes / 60,
      );
      _sleepStats.add(stat);
    }
    final weights = await _activitiesService.getAllWeights();
    for (final weight in weights) {
      final stat = StatItem(
        dateTime: DateFormat("dd.MM.yyyy").parse(weight.date),
        value: weight.num,
      );
      _weightStats.add(stat);
    }
    final pulses = await _activitiesService.getAllPulse();
    for (final pulse in pulses) {
      final stat = StatItem(
        dateTime: DateFormat("dd.MM.yyyy").parse(pulse.date),
        value: pulse.num,
      );
      _pulseStats.add(stat);
    }

    _allStats = [
      _workoutStats,
      _sleepStats,
      _weightStats,
      _pulseStats,
    ];
    notifyListeners();
  }
}
