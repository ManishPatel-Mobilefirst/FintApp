

import 'package:shared_preferences/shared_preferences.dart';

class SharedPref {
  static SharedPreferences? _preferences;

  static Future<SharedPreferences?> getInstance() async {
    if (_preferences == null) {
      _preferences = await SharedPreferences.getInstance();
      return _preferences;
    }
    return _preferences;
  }
  static const String ISDATA = 'is_data';
  static const String NAME = 'name';
  static const String GENDER = 'gender';
  static const String BIRTHDATE = 'birth_date';
  static const String MOBILENUMBER = 'mobile_number';



  static Future<void> addStringToSF(String key, String? value) async {
    await _preferences!.setString(key, value!);
  }

  static Future<void> addIntToSF(String key, int? value) async {
    await _preferences!.setInt(key, value!);
  }

  static Future<void> addBoolToSF(String key, bool? value) async {
    await _preferences!.setBool(key, value!);
  }

  static String? getStringValueFromSF(String key) {
    String? stringValue = _preferences!.getString(key);
    return stringValue;
  }

  static int? getIntValueFromSF(String? key) {
    int? stringValue = _preferences!.getInt(key!);
    return stringValue;
  }

  static bool? getBoolValueFromSF(String? key) {
    bool? stringValue = _preferences!.getBool(key!);
    return stringValue;
  }
  static void clearSF() {
    _preferences!.clear();
  }
}