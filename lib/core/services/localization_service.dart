import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restart_app/restart_app.dart';

import 'get_storage_helper.dart';

class LocalizationService extends GetxService {
  @override
  void onInit() {
    Get.updateLocale(Locale(CacheHelper.getLocale));
    super.onInit();
  }

  setLocale(String newLang, [bool isWithRestart = false]) async {
    await CacheHelper.cacheLocale(langCode: newLang);
    Get.updateLocale(Locale(newLang));
    if (isWithRestart) {
      Restart.restartApp();
    }
  }

  bool isAr() {
    return Get.locale?.languageCode == 'ar';
  }
}
