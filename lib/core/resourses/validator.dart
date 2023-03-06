import 'package:get/get.dart';

import '../language/local_keys.dart';

class Validator {
  static String? validateName(String? value) {
    if (value!.isEmpty || value.length < 5) {
      return "Please enter you Full Name";
    }
    return null;
  }

  static String? validateEmpty(String? value) {
    if (value!.isEmpty) {
      return "Can't be empty";
    }
    return null;
  }

  static String? validateMobile(String? value) {
    // String pattern = r'(^[0-9]*$)';
    // RegExp regExp = RegExp(pattern);
    if (value!.isEmpty) {
      return LocalKeys.validateEmptyPhone.tr;
    } else if (!value.isPhoneNumber) {
      return LocalKeys.validateValidEmail.tr;
    }
    return null;
  }

  static String? validatePassword(String? value) {
    if (value != null) {
      if (value.trim().isEmpty) {
        return LocalKeys.validateEmptyPassword.tr;
      }
      if (!value.isEmail) {
        return LocalKeys.validateValidPassword.tr;
      }
      return null;
    }
    return null;
  }

  static String? validateConfirmPassword(String? value, String? newPassword) {
    if (value != null) {
      if (value.trim().isEmpty) {
        return LocalKeys.validateEmptyPassword.tr;
      }
      if (!value.isEmail) {
        return LocalKeys.validateValidPassword.tr;
      }
      if (value.trim() != newPassword) {
        return LocalKeys.validateNotMatchPassword.tr;
      }
      return null;
    }
    return null;
  }

  static String? validatePhone(String? value) {
    if (value!.isEmpty) {
      return LocalKeys.validateEmptyPhone.tr;
    } else if (!value.isPhoneNumber) {
      return LocalKeys.validateValidEmail.tr;
    }
    return null;
  }

  static String? validateEmail(String? value) {
    String pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regExp = RegExp(pattern);
    if (value!.isEmpty) {
      return LocalKeys.validateEmptyEmail.tr;
    } else {
      if (!regExp.hasMatch(value)) {
        return LocalKeys.validateValidEmail.tr;
      }
    }
    return null;
  }

  static String? validateEmailCorrect(String? value) {
    String pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regExp = RegExp(pattern);
    if (value!.isEmpty) {
      return LocalKeys.validateEmptyEmail.tr;
    } else {
      if (!regExp.hasMatch(value)) {
        return LocalKeys.validateValidEmail.tr;
      }
    }
    return null;
  }

  static String? validateAddress(String? value) {
    if (value!.isEmpty || value.length < 5) {
      return 'enter_address_ver'.tr;
    }
    return null;
  }
}
