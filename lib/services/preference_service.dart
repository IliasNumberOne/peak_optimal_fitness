import 'package:peak_optimal/utils/utils.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PreferencesService {
  final SharedPreferences preferences;

  PreferencesService(this.preferences);

  static const premiumKey = "PREMIUM";
  static const linkKey = "LINK";
  static const favoritesKey = "FAVORITES";
  static const completedWorkoutsKey = "WORKOUTS";
  static const datesKey = "DATES";
  static const waterKey = "WATER";
  static const firstInit = 'FIRST_INIT';

  Future<void> setPremium() async {
    await preferences.setBool(premiumKey, true);
  }

  bool getPremium() {
    return preferences.getBool(premiumKey) ?? false;
  }

  Future<void> setLink(String link) async {
    await preferences.setString(linkKey, link);
  }

  String? getLink() {
    return preferences.getString(linkKey);
  }

  Future<void> setFavorites(List<int> favorites) async {
    final data = favorites.map((e) => e.toString()).toList();
    await preferences.setStringList(favoritesKey, data);
  }

  List<int> getFavorites() {
    final data = preferences.getStringList(favoritesKey) ?? [];
    if (data.isEmpty) return [];
    final favorites = data.map((e) => int.parse(e)).toList();
    return favorites;
  }

  Future<void> updateDates(List<DateTime> dates) async {
    final data = dates.map((e) => e.microsecondsSinceEpoch.toString()).toList();
    await preferences.setStringList(datesKey, data);
  }

  List<DateTime> getDates() {
    final data = preferences.getStringList(datesKey) ?? [];
    if (data.isEmpty) return [];
    final dates = data
        .map((e) => DateTime.fromMicrosecondsSinceEpoch(int.parse(e)))
        .toList();
    return dates;
  }

  Future<void> updateTodayWorkouts(Set<int> workouts, DateTime dateTime) async {
    final date = dateTime.withZeroTime.microsecondsSinceEpoch;
    final data = workouts.map((e) => e.toString()).toList();
    await preferences.setStringList(date.toString(), data);
  }

  Set<int> getWorkoutsByDate(DateTime dateTime) {
    final date = dateTime.withZeroTime.microsecondsSinceEpoch.toString();
    final data = preferences.getStringList(date) ?? [];
    if (data.isEmpty) return {};
    final workouts = data.map((e) => int.parse(e)).toSet();
    return workouts;
  }

  Future<void> updateDailyWater(int count) async {
    final date = DateTime.now().withZeroTime.microsecondsSinceEpoch.toString();
    await preferences.setInt(waterKey + date, count);
  }

  int getDailyWaterCount() {
    final date = DateTime.now().withZeroTime.microsecondsSinceEpoch.toString();
    final count =  preferences.getInt(waterKey + date) ?? 0;
    return count;
  }

  Future<void> setFirstInit() async {
    await preferences.setBool(firstInit, false);
  }

  bool getFirstInit() {
    return preferences.getBool(firstInit) ?? true;
  }
}
