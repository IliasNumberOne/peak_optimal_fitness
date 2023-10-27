import 'package:flutter/material.dart';
import 'package:peak_optimal/data/data.dart';
import 'package:peak_optimal/models/models.dart';
import 'package:peak_optimal/services/services.dart';
import 'package:peak_optimal/utils/utils.dart';

class WorkoutProvider extends ChangeNotifier {
  final PreferencesService _preferencesService;

  WorkoutProvider({
    required PreferencesService preferencesService,
  }) : _preferencesService = preferencesService;

  bool _premium = false;

  bool get premium => _premium;

  Workout _workout = chestBackWorkouts.first;

  Workout get workout => _workout;

  List<Workout> _workouts = categories.first.workouts;

  List<Workout> get workouts => _workouts;

  final List<Workout> _favoriteWorkouts = [];

  List<Workout> get favoriteWorkouts => _favoriteWorkouts;

  List<int> _favorites = [];

  List<int> get favorites => _favorites;

  Category _category = categories.first;

  Category get category => _category;

  int _step = -1;

  int get step => _step;

  void init() {
    _premium = _preferencesService.getPremium();
    _favorites = _preferencesService.getFavorites();
    final list = List.from(categories.first.workouts);
    for (final item in list) {
      if (_favorites.contains(item.id)) {
        _favoriteWorkouts.add(item);
      }
    }
    notifyListeners();
  }

  void setWorkout(Workout workout) {
    _workout = workout;
    _step = 0;
    notifyListeners();
  }

  void onLike(Workout workout) async {
    if (_favorites.contains(workout.id)) {
      _favorites.remove(workout.id);
      _favoriteWorkouts.remove(workout);
    } else {
      _favorites.add(workout.id);
      _favoriteWorkouts.add(workout);
    }
    if (_category.categoryType == CategoryType.favorite) {
      _workouts = List.from(_favoriteWorkouts);
    }
    await _preferencesService.setFavorites(_favorites);
    notifyListeners();
  }

  void changeCategory(Category newCategory) {
    _category = newCategory;
    switch (_category.categoryType) {
      case CategoryType.favorite:
        _workouts = List.from(_favoriteWorkouts);
      default:
        _workouts = List.from(_category.workouts);
    }

    notifyListeners();
  }

  void buyPremium() async {
    await _preferencesService.setPremium();
    _premium = true;
    notifyListeners();
  }

  void nextStep() async {
    final today = DateTime.now().withZeroTime;
    if (workout.steps.length - 1 == _step) {
      final list = _preferencesService.getWorkoutsByDate(today).toSet();
      final dates = _preferencesService.getDates();
      if(!dates.contains(today)) {
        dates.add(today);
        await _preferencesService.updateDates(dates);
      }
      list.add(workout.id);
      await _preferencesService.updateTodayWorkouts(list, today);
      return;
    }
    _step++;
    notifyListeners();
  }
}
