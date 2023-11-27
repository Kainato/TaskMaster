import 'package:flutter/material.dart';

class ColorsData {
  // Light Mode
  static const Color primary = Colors.purple;
  static const Color secondary = Colors.green;
  static const Color error = Colors.red;
  static const Color onPSR = Colors.white;
  static const Color surface = Colors.white;
  static const Color surfaceVariant = Color(0xFF43493e);
  static const Color onSB = Colors.black;
  static const Color inverseSurface = Color(0xFF2f312d);
  static const Color inversePrimary = Color(0xFFfed6ff);
  static const Color onInverseSurface = Color(0xFFf8faf0);
  static const Color background = Colors.white;

  // Dark Mode
  static Color primaryDark = Colors.purple.shade200;
  static Color onPrimaryDark = Colors.purple.shade700;
  static Color secondaryDark = Colors.green.shade200;
  static Color onSecondaryDark = Colors.green.shade700;
  static Color errorDark = Colors.red.shade200;
  static Color onErrorDark = Colors.red.shade700;
  static Color surfaceDark = Colors.grey.shade800;
  static Color onSurfaceDark = Colors.white;
  static Color backgroundDark = Colors.grey.shade900;
  static Color onBackgroundDark = Colors.white;
  static const Color surfaceVariantDark = Color(0xFF373a33);
  static const Color inverseSurfaceDark = Color(0xFF11140e);
  static const Color inversePrimaryDark = Color(0xFFfed6ff);
  static const Color onInverseSurfaceDark = Color(0xFFf8faf0);

  primaryColor(context) =>
      Theme.of(context).brightness == Brightness.dark ? primaryDark : primary;

  onPrimaryColor(context) =>
      Theme.of(context).brightness == Brightness.dark ? onPrimaryDark : onPSR;

  secondaryColor(context) => Theme.of(context).brightness == Brightness.dark
      ? secondaryDark
      : secondary;

  onSecondaryColor(context) =>
      Theme.of(context).brightness == Brightness.dark ? onSecondaryDark : onPSR;

  errorColor(context) =>
      Theme.of(context).brightness == Brightness.dark ? errorDark : error;

  onErrorColor(context) =>
      Theme.of(context).brightness == Brightness.dark ? onErrorDark : onPSR;

  surfaceColor(context) =>
      Theme.of(context).brightness == Brightness.dark ? surfaceDark : surface;

  surfaceVariantColor(context) =>
      Theme.of(context).brightness == Brightness.dark
          ? surfaceVariantDark
          : surfaceVariant;

  onSurfaceColor(context) =>
      Theme.of(context).brightness == Brightness.dark ? onSurfaceDark : onSB;

  inverseSurfaceColor(context) =>
      Theme.of(context).brightness == Brightness.dark
          ? inverseSurfaceDark
          : inverseSurface;

  inversePrimaryColor(context) =>
      Theme.of(context).brightness == Brightness.dark
          ? inversePrimaryDark
          : inversePrimary;

  onInverseSurfaceColor(context) =>
      Theme.of(context).brightness == Brightness.dark
          ? onInverseSurfaceDark
          : onInverseSurface;

  backgroundColor(context) => Theme.of(context).brightness == Brightness.dark
      ? backgroundDark
      : background;

  onBackgroundColor(context) =>
      Theme.of(context).brightness == Brightness.dark ? onBackgroundDark : onSB;
}
