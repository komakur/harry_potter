import 'package:flutter/material.dart';

class ColorUtils {
  static Color createColorByString(String value) {
    var hash = 0;
    for (var i = 0; i < value.length; i++) {
      hash = value.codeUnitAt(i) + ((hash << 5) - hash);
    }

    final h = hash % 360;
    return HSLColor.fromAHSL(1, h.toDouble(), 0.8, 0.4).toColor();
  }
}
