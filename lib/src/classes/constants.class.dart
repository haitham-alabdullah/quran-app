import 'package:flutter/material.dart';

class Constants {
  static const Color foregroundLight = Color(0xff151618);
  static const Color backgroundLight = Color(0xffebe9dc);
  static const Color secondaryLight = Color(0xFF5A5A58);

  static const Color foregroundDark = Color(0xffeae8dc);
  static const Color backgroundDark = Color(0xff121416);
  static const Color secondaryDark = Color(0xFFA4A4A4);

  static ThemeData themeData = ThemeData(
    appBarTheme: const AppBarTheme(
      backgroundColor: backgroundLight,
      foregroundColor: foregroundLight,
    ),
    splashColor: backgroundLight,
    highlightColor: Colors.black12,
    scaffoldBackgroundColor: backgroundLight,
  );

  static ThemeData themeDataDark = ThemeData.dark().copyWith(
    appBarTheme: const AppBarTheme(
      backgroundColor: backgroundDark,
      foregroundColor: foregroundDark,
    ),
    splashColor: backgroundDark,
    highlightColor: Colors.white12,
    scaffoldBackgroundColor: backgroundDark,
  );

  static Color foreground(BuildContext cnx) {
    if (Theme.of(cnx).brightness == Brightness.light) {
      return foregroundLight;
    }
    return foregroundDark;
  }

  static Color background(BuildContext cnx) {
    if (Theme.of(cnx).brightness == Brightness.light) {
      return foregroundLight;
    }
    return foregroundDark;
  }

  static Color secondary(BuildContext cnx) {
    if (Theme.of(cnx).brightness == Brightness.light) {
      return secondaryLight;
    }
    return secondaryDark;
  }
}
