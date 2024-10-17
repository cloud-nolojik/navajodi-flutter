import 'package:flutter/material.dart';
import '../core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray100,
      );
  static BoxDecoration get fillIndigo => BoxDecoration(
        color: appTheme.indigo5001,
      );
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary.withOpacity(0.18),
      );
  static BoxDecoration get fillWhiteA => BoxDecoration(
        color: appTheme.whiteA70001,
      );
  static BoxDecoration get fillWhiteA700 => BoxDecoration(
        color: appTheme.whiteA700,
      );
// Gradient decorations
  static BoxDecoration get gradientBlackToBlack => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 1),
          end: Alignment(0.5, 0),
          colors: [appTheme.black900, appTheme.black900.withOpacity(0)],
        ),
      );
  static BoxDecoration get gradientPrimaryContainerToGray => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [
            theme.colorScheme.primaryContainer.withOpacity(0),
            appTheme.gray900
          ],
        ),
      );
// Outline decorations
  static BoxDecoration get outline => BoxDecoration(
        color: appTheme.whiteA70001.withOpacity(0.65),
      );
  static BoxDecoration get outlineBlack => BoxDecoration(
        color: appTheme.whiteA70001,
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.06),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              8,
            ),
          )
        ],
      );
  static BoxDecoration get outlineBlueGrayE => BoxDecoration(
        color: appTheme.whiteA70001,
        border: Border.all(
          color: appTheme.blueGray1008e,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineIndigo => BoxDecoration(
        color: appTheme.whiteA70001.withOpacity(0.3),
        border: Border.all(
          color: appTheme.indigo10099,
          width: 1.h,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.gray90011,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              3,
              4,
            ),
          )
        ],
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder38 => BorderRadius.circular(
        38.h,
      );
// Custom borders
  static BorderRadius get customBorderBL20 => BorderRadius.vertical(
        bottom: Radius.circular(20.h),
      );
// Rounded borders
  static BorderRadius get roundedBorder10 => BorderRadius.circular(
        10.h,
      );
  static BorderRadius get roundedBorder20 => BorderRadius.circular(
        20.h,
      );
  static BorderRadius get roundedBorder32 => BorderRadius.circular(
        32.h,
      );
}
