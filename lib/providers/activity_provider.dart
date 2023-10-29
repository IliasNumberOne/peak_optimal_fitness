import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';
import 'package:peak_optimal/models/models.dart';
import 'package:peak_optimal/services/services.dart';
import 'package:peak_optimal/utils/utils.dart';

class ActivityProvider extends ChangeNotifier {
  final PreferencesService _preferenceService;
  final ActivitiesService _activitiesService;

  ActivityProvider({
    required PreferencesService preferenceService,
    required ActivitiesService activitiesService,
  })  : _preferenceService = preferenceService,
        _activitiesService = activitiesService;

  final List<String> _waterActivity = [];
  int _waterGlass = 0;
  List<ActivityItem> _weightList = [];
  List<SleepItem> _sleepList = [];
  List<ActivityItem> _pulseList = [];

  List<String> get waterActivity => _waterActivity;

  int get waterGlass => _waterGlass;

  List<ActivityItem> get weightList => _weightList;

  List<SleepItem> get sleepList => _sleepList;

  List<ActivityItem> get pulseList => _pulseList;

  var now = DateTime.now().withZeroTime;
  var formatter = DateFormat('dd.MM.yyyy');
  String currentDate = '';

  void initState() async {
    currentDate = formatter.format(now);
    _weightList = await _activitiesService.getAllWeights();
    _sleepList = await _activitiesService.getAllSleep();
    _pulseList = await _activitiesService.getAllPulse();
    _waterGlass = _preferenceService.getDailyWaterCount();
    notifyListeners();
  }

  void drinkWater() async {
    if (_waterGlass < 8) {
      _waterGlass++;
      await _preferenceService.updateDailyWater(_waterGlass);
      notifyListeners();
    }
  }

  void createWeight(double weight) async {
    final check = await _activitiesService.checkWeight();
    if(!check) return;
    double round = double.parse(weight.toStringAsFixed(1));
    String weightDifferent = '';
    double subtraction =
        _weightList.isEmpty ? 0 : weight - _weightList.last.num;
    if (subtraction > 0) {
      weightDifferent = '+${subtraction.toStringAsFixed(1)}';
    } else {
      weightDifferent = subtraction.toStringAsFixed(1);
    }
    ActivityItem weightItem = ActivityItem(
      id: 0,
      date: currentDate,
      num: round,
      additionalNum: weightDifferent,
    );
    await _activitiesService.createWeightList(weightItem);
    _weightList = await _activitiesService.getAllWeights();
    notifyListeners();
  }

  void deleteWeight(ActivityItem activityItem) async {
    await _activitiesService.deleteWeight(activityItem);
    _weightList = await _activitiesService.getAllWeights();
    notifyListeners();
  }

  void createSleep(String bedTime, String risingTime) async {
    final check = await _activitiesService.checkSleep();
    if(!check) return;
    DateTime durationStart = DateFormat.Hm().parse(bedTime);
    DateTime durationEnd = DateFormat.Hm().parse(risingTime);
    DateTime timeSubtraction = DateFormat.Hm()
        .parse(durationStart.difference(durationEnd).abs().toString());
    if (durationStart.isAfter(durationEnd)) {
      timeSubtraction = DateFormat.Hm().parse(DateFormat.Hm()
          .parse('24:00')
          .difference(timeSubtraction)
          .abs()
          .toString());
    }
    String timeDiff = DateFormat.Hm().format(timeSubtraction);
    SleepItem sleepItem = SleepItem(
      id: 0,
      date: currentDate,
      num: timeDiff,
      bedTime: bedTime,
      risingTime: risingTime,
    );
    await _activitiesService.createSleepList(sleepItem);
    _sleepList = await _activitiesService.getAllSleep();
    notifyListeners();
  }

  void deleteSleep(SleepItem sleepItem) async {
    await _activitiesService.deleteSleep(sleepItem);
    _sleepList = await _activitiesService.getAllSleep();
    notifyListeners();
  }

  void createPulse(int bpmValue) async {
    final check = await _activitiesService.checkPulse();
    if(!check) return;
    ActivityItem pulseItem = ActivityItem(
      id: 0,
      date: currentDate,
      num: bpmValue.toDouble(),
      additionalNum: '',
    );
    await _activitiesService.createPulseList(pulseItem);
    _pulseList = await _activitiesService.getAllPulse();
    notifyListeners();
  }

  void deletePulse(ActivityItem pulseItem) async {
    await _activitiesService.deletePulse(pulseItem);
    _pulseList = await _activitiesService.getAllPulse();
    notifyListeners();
  }
}
