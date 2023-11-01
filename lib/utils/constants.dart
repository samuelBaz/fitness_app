import 'dart:ui';

import 'package:flutter/cupertino.dart';

class Constants {
  static const Color primaryColor = Color(0xFF95ADFE);
  static const Color grayColor = Color(0xFF7B6F72);
  static const Color textInputColorBg = Color(0xFFF7F8F8);
  static const LinearGradient primaryGradient = LinearGradient(
    begin: Alignment(-0.20, -0.98),
    end: Alignment(0.2, 0.98),
    colors: [
      Color(0xC694A8FE),
      Color(0xC694A8FE),
      Color(0xFF95ADFE),
      Color(0xFF95ADFE)
    ],
  );
}
