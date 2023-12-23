import 'package:shared_preferences/shared_preferences.dart';

import '../../core/constants/enums/cache_keys.dart';

class CacheService {
  CacheService._init() {
    SharedPreferences.getInstance().then((value) {
      _preferences = value;
    });
  }
  static final CacheService _instance = CacheService._init();

  SharedPreferences? _preferences;
  static CacheService get instance => _instance;
  static Future prefrencesInit() async {
    instance._preferences ??= await SharedPreferences.getInstance();
  }

  Future<void> clearAll() async {
    await _preferences!.clear();
  }

  Future<void> clearAllSaveFirst() async {
    if (_preferences != null) {
      await _preferences!.clear();
      await setBoolValue(CacheKeys.IS_FIRST_APP, true);
    }
  }

  Future<void> setStringValue(CacheKeys key, String value) async {
    await _preferences!.setString(key.toString(), value);
  }

  Future<void> setBoolValue(CacheKeys key, bool value) async {
    await _preferences!.setBool(key.toString(), value);
  }

  String getStringValue(CacheKeys key) => _preferences?.getString(key.toString()) ?? '';

  bool getBoolValue(CacheKeys key) => _preferences!.getBool(key.toString()) ?? false;
}