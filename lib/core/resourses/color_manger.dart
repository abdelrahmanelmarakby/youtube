import 'package:flutter/material.dart';

class ColorsManger {
  static const Color primary = Color(0xff346751);
  static const Color darkGrey = Color(0xFF484848);
  static const Color hintTextColor = Color(0xFF738594);
  static const Color orange = Color(0xFFFF5B5B);
  static const Color grey = Color(0xFF757575);
  static const Color lightGrey = Color(0xFFBDBDBD);
  static const Color grey1 = Color(0xFFF5F5F5);
  static const Color grey2 = Color(0xFFEEEEEE);
  static const Color white = Color(0xFFFFFFFF);
  static const Color error = Color(0xFFB00020);
  static const Color success = Color(0xFF00C853);
  static const Color red = Color(0xFFFF0000);
  static const Color black = Color(0xFF000000);
  static const Color blue = Color(0xFF35517A);
  static const Color dotColor = Color(0xFF3E4F94);
  static const Color lightBlue = Color(0xFF009AE2);
  static const Color pink = Color(0xFFF72585);
  static const Color yellow = Color(0xFFFDC500);
  static const Color green = Color(0xFF48BA68);
  static const Color dotedBorder = Color(0xFFFC992D);
  static const Color vouchersColor = Color(0xFFFDF3E9);

  static const LinearGradient simpleGradients = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color(0xFF3548AE),
      Color(0xFFA324D6),
    ],
    stops: [0.3, 0.7],
  );
  static const LinearGradient multiGradients = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color(0xFF13B1AD),
      Color(0xFFD52DF2),
    ],
    stops: [0.1, 0.9],
  );
  static const LinearGradient buttonGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.topRight,
    colors: [
      Color(0xFF1E96FC),
      Color(0xff80DC74),
    ],
  );
  static const LinearGradient currentAddressGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color(0xFF1E96FC),
      Color(0xff80DC74),
    ],
  );
  static LinearGradient addressGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      const Color(0xff4F4944).withOpacity(.3),
      const Color(0xFF4F4944).withOpacity(.5),
    ],
  );
  static LinearGradient shimmerGradient = const LinearGradient(
    colors: [
      Color(0xFFEBEBF4),
      Color(0xFFF4F4F4),
      Color(0xFFEBEBF4),
    ],
    stops: [
      0.1,
      0.3,
      0.4,
    ],
    begin: Alignment(-1.0, -0.3),
    end: Alignment(1.0, 0.3),
    tileMode: TileMode.clamp,
  );
}
