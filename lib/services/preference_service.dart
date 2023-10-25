import 'package:shared_preferences/shared_preferences.dart';

class PreferencesService {
  final SharedPreferences preferences;

  PreferencesService(this.preferences);

  static const premiumKey = "PREMIUM";
  static const linkKey = "LINK";
  static const favoritesKey = "FAVORITES";

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
    if(data.isEmpty) return [];
    final favorites = data.map((e) => int.parse(e)).toList();
    return favorites;
  }
}
