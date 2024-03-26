import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferenceService {
  static late final SharedPreferences _prefsInstance;
  // ignore: constant_identifier_names
  static const String AUTH_TOKEN = 'auth_token';
  // static const String FIREBASE_TOKEN = 'firebase_token';
  // ignore: constant_identifier_names
  static const String USER_ID = 'user_id';
  static Future<SharedPreferences> init() async {
    return _prefsInstance = await SharedPreferences.getInstance();
  }

  //Bool
  static bool? getBool(String key) => _prefsInstance.getBool(key);

  static Future<bool> setBool(String key, bool value) async =>
      _prefsInstance.setBool(key, value);

  //Int
  static int? getInt(String key) => _prefsInstance.getInt(key);

  static Future<bool> setInt(String key, int value) async =>
      _prefsInstance.setInt(key, value);

  //String
  static String? getString(String key) => _prefsInstance.getString(key);

  static Future<bool> setString(String key, String value) async =>
      _prefsInstance.setString(key, value);

  //StringList
  static List<String>? getStringList(String key) =>
      _prefsInstance.getStringList(key);

  static Future<bool> setStringList(String key, List<String> value) async =>
      _prefsInstance.setStringList(key, value);

  //Double
  static Future<bool> setDouble(String key, double value) async =>
      _prefsInstance.setDouble(key, value);

  static double? getDouble(String key) => _prefsInstance.getDouble(key);

  //Remove
  static Future<bool> remove(String key) async => _prefsInstance.remove(key);

  //Clear all
  static Future<bool> clearAll() async => _prefsInstance.clear();
}
