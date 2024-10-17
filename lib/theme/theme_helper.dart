import 'package:flutter/material.dart';
import '../core/app_export.dart';

LightCodeColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();

/// Helper class for managing themes and colors.

// ignore_for_file: must_be_immutable
class ThemeHelper {
  // The current app theme
  var _appTheme = PrefUtils().getThemeData();

// A map of custom color themes supported by the app
  Map<String, LightCodeColors> _supportedCustomColor = {
    'lightCode': LightCodeColors()
  };

// A map of color schemes supported by the app
  Map<String, ColorScheme> _supportedColorScheme = {
    'lightCode': ColorSchemes.lightCodeColorScheme
  };

  /// Returns the lightCode colors for the current theme.
  LightCodeColors _getThemeColors() {
    return _supportedCustomColor[_appTheme] ?? LightCodeColors();
  }

  /// Returns the current theme data.
  ThemeData _getThemeData() {
    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.lightCodeColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: TextThemes.textTheme(colorScheme),
      scaffoldBackgroundColor: appTheme.whiteA700,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colorScheme.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          shadowColor: colorScheme.primary.withOpacity(0.2),
          elevation: 13,
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      dividerTheme: DividerThemeData(
        thickness: 1,
        space: 1,
        color: appTheme.gray200,
      ),
    );
  }

  /// Returns the lightCode colors for the current theme.
  LightCodeColors themeColor() => _getThemeColors();

  /// Returns the current theme data.
  ThemeData themeData() => _getThemeData();
}

/// Class containing the supported text theme styles.
class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
        bodyMedium: TextStyle(
          color: appTheme.whiteA70001.withOpacity(0.75),
          fontSize: 14.fSize,
          fontFamily: 'SF Pro Text',
          fontWeight: FontWeight.w400,
        ),
        bodySmall: TextStyle(
          color: appTheme.whiteA70001,
          fontSize: 10.fSize,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w400,
        ),
        headlineSmall: TextStyle(
          color: appTheme.blueGray80002,
          fontSize: 25.fSize,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w600,
        ),
        labelLarge: TextStyle(
          color: appTheme.blueGray80001.withOpacity(0.73),
          fontSize: 13.fSize,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w500,
        ),
        labelMedium: TextStyle(
          color: appTheme.whiteA70001,
          fontSize: 10.fSize,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w600,
        ),
        titleLarge: TextStyle(
          color: appTheme.whiteA70001,
          fontSize: 22.fSize,
          fontFamily: 'SF Pro Text',
          fontWeight: FontWeight.w600,
        ),
        titleMedium: TextStyle(
          color: appTheme.blueGray800,
          fontSize: 17.fSize,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w600,
        ),
        titleSmall: TextStyle(
          color: appTheme.black900,
          fontSize: 14.fSize,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w500,
        ),
      );
}

/// Class containing the supported color schemes.
class ColorSchemes {
  static final lightCodeColorScheme = ColorScheme.light(
    primary: Color(0XFFD83E2E),
    primaryContainer: Color(0X1110171E),
    secondaryContainer: Color(0XFFC23A66),
    onError: Color(0XFF838994),
    onPrimary: Color(0XFF0F161F),
    onPrimaryContainer: Color(0XFF8F919A),
  );
}

/// Class containing custom colors for a lightCode theme.
class LightCodeColors {
  // Black
  Color get black900 => Color(0XFF000000);
// BlueGray
  Color get blueGray100 => Color(0XFFD2D2D2);
  Color get blueGray10001 => Color(0XFFD5DCE3);
  Color get blueGray200 => Color(0XFFABABB7);
  Color get blueGray400 => Color(0XFF8186A1);
  Color get blueGray40001 => Color(0XFF828995);
  Color get blueGray500 => Color(0XFF677294);
  Color get blueGray600 => Color(0XFF576170);
  Color get blueGray60001 => Color(0XFF636673);
  Color get blueGray700 => Color(0XFF4E5162);
  Color get blueGray800 => Color(0XFF3F414E);
  Color get blueGray80001 => Color(0XFF2C3E50);
  Color get blueGray80002 => Color(0XFF333F52);
// BlueGraye
  Color get blueGray1008e => Color(0X8EC8CACD);
// BlueGrayf
  Color get blueGray2007f => Color(0X7FB4C6D3);
// BlueGrayD
  Color get blueGray200D8 => Color(0XD8B0B6C7);
// Gray
  Color get gray100 => Color(0XFFF7F7F7);
  Color get gray200 => Color(0XFFECECEC);
  Color get gray50 => Color(0XFFFAFAFA);
  Color get gray500 => Color(0XFFACACAC);
  Color get gray600 => Color(0XFF6D6D82);
  Color get gray60001 => Color(0XFF757885);
  Color get gray60002 => Color(0XFF7E7E7E);
  Color get gray700 => Color(0XFF646464);
  Color get gray70001 => Color(0XFF63636B);
  Color get gray70002 => Color(0XFF57606F);
  Color get gray70003 => Color(0XFF636672);
  Color get gray800 => Color(0XFF4D4D4D);
  Color get gray900 => Color(0XFF10161D);
  Color get gray90011 => Color(0X11052D29);
// Graye
  Color get gray8001e => Color(0X1E3D3D41);
// GrayB
  Color get gray800B2 => Color(0XB243454A);
// Indigo
  Color get indigo10099 => Color(0X99C5D0DE);
  Color get indigo50 => Color(0XFFE4EAED);
  Color get indigo5001 => Color(0XFFE5EBF0);
// Red
  Color get red5099 => Color(0X99FFEDEA);
// White
  Color get whiteA700 => Color(0XFFFEFEFE);
  Color get whiteA70001 => Color(0XFFFFFFFF);
}
