import 'dart:ui';

import 'package:flutter/material.dart';

class ColorConstants{
  static const white = Color(0xFFFFFFFF);
  static const black = Color(0xFF000000);

  //App theme colours
  static Color primary = Colors.yellow;
  static Color secondary = Colors.white70;
  //
  // static Color APP_TEXT_BLUE = CustomColor.fromHex("#5f89bc");
  // static Color DEFAULT_TEXT_COLOR = CustomColor.fromHex("#808080");

  static Color hexToColor(String? code) {
    print(int.parse(code!.substring(1, 7), radix: 16) + 0xFF000000);
    return Color(int.parse(code!.substring(1, 7), radix: 16) + 0xFF000000);
  }
}