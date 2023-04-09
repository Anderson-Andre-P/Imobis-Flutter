import 'package:flutter/material.dart';

class ThemeUtil {
  static bool isDark(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark;
  }

  static ThemeData theme(BuildContext context) {
    return Theme.of(context);
  }
}
