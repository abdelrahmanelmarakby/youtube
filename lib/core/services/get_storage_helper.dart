import 'package:get_storage/get_storage.dart';

class CacheHelper {
  //========================================================

  static final GetStorage _appBox = GetStorage();
  static Future<void> init() async => await GetStorage.init();
  //========================================================

  static Future<void> cacheToken({
    required String token,
  }) async {
    await _cacheUserToken(token);
  }

  static Future<void> _cacheUserToken(String token) async =>
      await _appBox.write('token', token);
  static String? get getUserToken => _appBox.read('token');

//=========================================================
  static Future<void> cacheLocale({
    required String langCode,
  }) async {
    await _cacheLocale(langCode);
  }

  static Future<void> _cacheLocale(String langCode) async =>
      await _appBox.write('langCode', langCode);

  static String get getLocale => _appBox.read('langCode') ?? "en";
  //========================================================
  static Future<void> saveIsFirstTime({
    required bool firstTime,
  }) async {
    return await _saveIsFirstTime(firstTime);
  }

  static Future<void> _saveIsFirstTime(bool firstTime) async {
    return await _appBox.write('FirstTime', firstTime);
  }

  static bool get getFirstTime => _appBox.read('FirstTime') ?? true;
  //========================================================
  //========================================================
  //========================================================
  //========================================================
  //========================================================
  //========================================================

  static Future<void> signOut() async => await _appBox.remove("token");
  //========================================================

}
