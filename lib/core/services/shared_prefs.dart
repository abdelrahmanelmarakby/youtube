// import 'package:get/get.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// class SharedPrefService extends GetxService {
//   final SharedPreferences prefs;

//   SharedPrefService({required this.prefs});

//   String? token;

//   Future<bool> saveToken(String? token) async {
//     token = token;
//     return await prefs.setString("token", token ?? "");
//   }

//   String? getToken() {
//     final String? accessToken = prefs.getString("token");
//     if (accessToken != null && accessToken.isNotEmpty) {
//       token = accessToken;
//       return accessToken;
//     } else {
//       return null;
//     }
//   }

//   Future<bool> removeToken() async {
//     token = null;
//     return prefs.remove("token");
//   }

//   Future<bool> saveLocale(String langCode) async {
//     return await prefs.setString("lang", langCode);
//   }

//   String loadLocale() {
//     return prefs.getString("lang") ?? "en";
//   }

//   Future<bool> saveIsFirstTime() async {
//     return await prefs.setBool("FirstTime", false);
//   }

//   bool loadIsFirstTime() {
//     return prefs.getBool("FirstTime") ?? true;
//   }
// }
