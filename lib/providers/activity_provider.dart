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

  List<String> get waterActivity => _waterActivity;
  int get waterGlass => _waterGlass;
  List<ActivityItem> get weightList => _weightList;
  List<SleepItem> get sleepList => _sleepList;

  var now = DateTime.now().withZeroTime;
  var formatter = DateFormat('dd.MM.yyyy');
  String currentDate = '';

  void initState() async {
    currentDate = formatter.format(now);
    _weightList = await _activitiesService.getAllWeights();
    _sleepList = await _activitiesService.getAllSleep();
    // checkDailyWater();
    notifyListeners();
  }

  void checkDailyWater() {
    if (_waterActivity[1].isNotEmpty &&
        DateFormat('dd.MM.yyyy').parse(_waterActivity[1]).isBefore(now)) {
      _waterGlass = 0;
    } else {
      _waterGlass = int.parse(_waterActivity[0]);
    }
  }

  void drinkWater() {
    if (_waterGlass < 8) {
      _waterGlass++;
      _waterActivity[1] = currentDate;
      notifyListeners();
    }
  }

  void createWeight(double weight) async {
    double round = double.parse(weight.toStringAsFixed(1));
    String weightDifferent = '';
    double subtraction = _weightList.isEmpty
        ? 0
        : weight - _weightList.last.num;
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

  void createSleep(String bedTime, String risingTime) async{
    DateTime durationStart =  DateFormat.Hm().parse(bedTime);
    DateTime durationEnd =  DateFormat.Hm().parse(risingTime);
    DateTime timeSubtraction = DateFormat.Hm().parse(durationStart.difference(durationEnd).abs().toString());
    if(durationStart.isAfter(durationEnd)) {
      timeSubtraction = DateFormat.Hm().parse(DateFormat.Hm().parse('24:00').difference(timeSubtraction).abs().toString());
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
}
