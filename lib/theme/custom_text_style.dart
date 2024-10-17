import 'package:flutter/material.dart';
import '../core/app_export.dart';

extension on TextStyle {
  TextStyle get montserrat {
    return copyWith(
      fontFamily: 'Montserrat',
    );
  }

  TextStyle get sFProText {
    return copyWith(
      fontFamily: 'SF Pro Text',
    );
  }
}

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.
class CustomTextStyles {
  // Body text style
  static TextStyle get bodyMediumMontserratGray60001 =>
      theme.textTheme.bodyMedium!.montserrat.copyWith(
        color: appTheme.gray60001,
      );
  static TextStyle get bodyMediumMontserratGray60002 =>
      theme.textTheme.bodyMedium!.montserrat.copyWith(
        color: appTheme.gray60002,
        fontSize: 13.fSize,
      );
  static TextStyle get bodyMediumMontserratOnError =>
      theme.textTheme.bodyMedium!.montserrat.copyWith(
        color: theme.colorScheme.onError,
        fontSize: 15.fSize,
      );
// Title text style
  static TextStyle get titleLargeMontserratBluegray80002 =>
      theme.textTheme.titleLarge!.montserrat.copyWith(
        color: appTheme.blueGray80002,
      );
  static TextStyle get titleMediumBlack900 =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w500,
      );
  static TextStyle get titleMediumBlack900Bold =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w700,
      );
  static TextStyle get titleMediumBlack900_1 =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
      );
  static TextStyle get titleMediumBluegray400 =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray400,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w500,
      );
  static TextStyle get titleMediumBluegray40001 =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray40001,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w500,
      );
  static TextStyle get titleMediumBluegray700 =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray700,
      );
  static TextStyle get titleMediumBluegray700_1 =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray700,
      );
  static TextStyle get titleMediumBluegray80002 =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray80002,
        fontSize: 16.fSize,
      );
  static TextStyle get titleMediumBluegray80002Medium =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray80002,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w500,
      );
  static TextStyle get titleMediumGray60002 =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray60002,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w500,
      );
  static TextStyle get titleMediumGray800 =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray800,
        fontSize: 18.fSize,
      );
  static TextStyle get titleMediumOnPrimary =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static TextStyle get titleMediumPrimary =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static TextStyle get titleMediumPrimary16 =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 16.fSize,
      );
  static TextStyle get titleMediumPrimaryMedium =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w500,
      );
  static TextStyle get titleMediumPrimaryMedium16 =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w500,
      );
  static TextStyle get titleMediumWhiteA70001 =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.whiteA70001,
        fontSize: 18.fSize,
      );
  static TextStyle get titleMediumWhiteA70001_1 =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.whiteA70001,
      );
  static TextStyle get titleSmallBluegray200d8 =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray200D8,
      );
  static TextStyle get titleSmallBluegray500 =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray500.withOpacity(0.5),
        fontSize: 15.fSize,
      );
  static TextStyle get titleSmallBluegray60001 =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray60001,
      );
  static TextStyle get titleSmallBluegray80001 =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray80001,
      );
  static TextStyle get titleSmallBluegray80001_1 =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray80001,
      );
  static TextStyle get titleSmallGray500 =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray500,
        fontSize: 15.fSize,
      );
  static TextStyle get titleSmallGray60001 =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray60001,
      );
  static TextStyle get titleSmallGray60001SemiBold =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray60001,
        fontWeight: FontWeight.w600,
      );
  static TextStyle get titleSmallGray60001SemiBold_1 =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray60001,
        fontWeight: FontWeight.w600,
      );
  static TextStyle get titleSmallGray60001_1 =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray60001,
      );
  static TextStyle get titleSmallGray60002 =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray60002,
      );
  static TextStyle get titleSmallGray700 =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray700,
        fontSize: 15.fSize,
      );
  static TextStyle get titleSmallGray70001 =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray70001,
        fontSize: 15.fSize,
      );
  static TextStyle get titleSmallGray70003 =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray70003,
      );
  static TextStyle get titleSmallGray800b2 =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray800B2,
        fontWeight: FontWeight.w600,
      );
  static TextStyle get titleSmallOnPrimaryContainer =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static TextStyle get titleSmallPrimary =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  static TextStyle get titleSmallPrimarySemiBold =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w600,
      );
  static TextStyle get titleSmallWhiteA70001 =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.whiteA70001,
        fontWeight: FontWeight.w600,
      );
  static TextStyle get titleSmallWhiteA70001SemiBold =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.whiteA70001,
        fontSize: 15.fSize,
        fontWeight: FontWeight.w600,
      );
  static TextStyle get titleSmallWhiteA70001_1 =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.whiteA70001.withOpacity(0.75),
      );
}
