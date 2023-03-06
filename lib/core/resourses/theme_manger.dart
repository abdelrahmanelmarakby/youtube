import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'color_manger.dart';
import 'font_manger.dart';
import 'styles_manger.dart';
import 'values_manger.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
    useMaterial3: true,

    //main colors of the app
    scaffoldBackgroundColor: ColorsManger.grey1,
    primaryColor: ColorsManger.primary,
    primaryColorLight: ColorsManger.primary.withOpacity(.7),
    disabledColor: ColorsManger.grey1,
    platform: TargetPlatform.iOS,
    splashColor: ColorsManger.primary.withOpacity(.7),
    fontFamily: FontConstants.fontName,

    //card theme for the cards
    cardTheme: CardTheme(
      color: ColorsManger.white,
      shadowColor: ColorsManger.grey,
      elevation: AppSize.size4,
      margin: const EdgeInsets.all(AppMargin.margin8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
    appBarTheme: AppBarTheme(
      elevation: AppSize.size4,
      iconTheme: const IconThemeData(color: ColorsManger.white),
      backgroundColor: ColorsManger.primary,
      shadowColor: ColorsManger.primary.withOpacity(.7),
      systemOverlayStyle: const SystemUiOverlayStyle(
        systemNavigationBarIconBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarColor: Color(0xffdddeee), // Navigation bar
        statusBarColor: Color(0xffdddeee), // Status bar
      ),
      titleTextStyle: getRegularTextStyle(
          color: ColorsManger.white, fontSize: AppSize.size18),
    ),
    buttonTheme: ButtonThemeData(
      buttonColor: ColorsManger.primary,
      disabledColor: ColorsManger.grey1,
      splashColor: ColorsManger.primary.withOpacity(.7),
      textTheme: ButtonTextTheme.primary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: ColorsManger.primary,
        textStyle: getRegularTextStyle(
          color: ColorsManger.white,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: ColorsManger.primary,
        selectedItemColor: Colors.white,
        showSelectedLabels: true,
        unselectedItemColor: ColorsManger.grey,
        selectedLabelStyle:
            getBoldTextStyle(color: Colors.white, fontSize: FontSize.large),
        unselectedLabelStyle: getRegularTextStyle(
            color: ColorsManger.grey, fontSize: FontSize.medium)),
    textTheme: TextTheme(
      displayLarge: getMediumTextStyle(
          color: ColorsManger.darkGrey, fontSize: AppSize.size18),
      titleMedium: getMediumTextStyle(
          color: ColorsManger.darkGrey, fontSize: AppSize.size16),
      titleSmall: getMediumTextStyle(
          color: ColorsManger.darkGrey, fontSize: AppSize.size14),
      bodySmall: getRegularTextStyle(
        color: ColorsManger.grey1,
      ),
      bodyLarge: getRegularTextStyle(color: ColorsManger.grey),
    ),
    inputDecorationTheme: InputDecorationTheme(
      //border
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.0),
        borderSide: BorderSide(
          color: ColorsManger.hintTextColor.withOpacity(.3),
        ),
      ),
      //hint text style
      hintStyle: getRegularTextStyle(color: ColorsManger.lightBlue),
      //focused ERROR border
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: ColorsManger.hintTextColor.withOpacity(.3),
        ),
        borderRadius: BorderRadius.circular(12.0),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: ColorsManger.hintTextColor.withOpacity(.3),
        ),
        borderRadius: BorderRadius.circular(12.0),
      ),

      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: ColorsManger.hintTextColor.withOpacity(.3),
        ),
        borderRadius: BorderRadius.circular(12.0),
      ),
      suffixStyle: getMediumTextStyle(color: ColorsManger.grey),
      focusColor: ColorsManger.success,
      //focused ERROR hint text style
      errorStyle: getRegularTextStyle(color: ColorsManger.error),
      //focused Label text style
      labelStyle: getMediumTextStyle(color: ColorsManger.lightBlue),
      // filled: true,
      // fillColor: Colors.white,

      ///fill COLOR
      isDense: true,
      contentPadding: const EdgeInsets.symmetric(
        vertical: AppPadding.padding20,
        horizontal: AppPadding.padding16,
      ),
    ),
  );
}
