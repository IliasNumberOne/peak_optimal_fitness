import 'package:shared_preferences/shared_preferences.dart';

class PreferenceService {
  final SharedPreferences preferences;

  PreferenceService(this.preferences);

  static const premiumKey = "PREMIUM";
  static const linkKey = "LINK";

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
}
