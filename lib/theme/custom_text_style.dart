import 'package:flutter/material.dart';
import '../core/app_export.dart';

extension on TextStyle {
  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get notoSansGujarati {
    return copyWith(
      fontFamily: 'Noto Sans Gujarati',
    );
  }

  TextStyle get sora {
    return copyWith(
      fontFamily: 'Sora',
    );
  }

  TextStyle get baloo2 {
    return copyWith(
      fontFamily: 'Baloo 2',
    );
  }
}

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.
class CustomTextStyles {
  // Body style
  static get bodyLargeNotoSansGujarati =>
      theme.textTheme.bodyLarge!.notoSansGujarati;
  static get bodyLargeNotoSansGujaratiBold =>
      theme.textTheme.bodyLarge!.notoSansGujarati.copyWith(
        fontWeight: FontWeight.bold,
      );
  static get bodyLargeOnPrimaryContainer => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 18.fSize,
      );
  static get bodyLargeOnPrimaryContainer_1 =>
      theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get bodyLargePrimary => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 18.fSize,
      );
  static get bodyLargeActivePrimary => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 18.fSize,
      );
  static get bodyMediumSoraGray600 => theme.textTheme.bodyMedium!.sora.copyWith(
        color: appTheme.gray600,
      );
// Title text style
  static get titleMediumBluegray900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray900,
      );
  static get titleMediumInterOnPrimary =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get titleMediumOnPrimaryContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get titleMediumOnPrimaryContainer18 =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 18.fSize,
      );

  static get hintTextStyle => theme.textTheme.bodyMedium?.copyWith(
        color: appTheme.gray600,
        fontSize: 15.0,
      );

  static get titleMediumNotoSansGujarati =>
      theme.textTheme.titleMedium!.notoSansGujarati;
  static get titleMediumNotoSansGujaratiPink900 =>
      theme.textTheme.titleMedium!.notoSansGujarati.copyWith(
        color: appTheme.pink900,
      );
  static get titleMediumPink900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.pink900,
      );

  static get bodyLargeBaloo2_1 => theme.textTheme.bodyLarge!.baloo2;

  static get titleMediumNotoSansGujaratiOnPrimaryContainer =>
      theme.textTheme.titleMedium!.notoSansGujarati.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get bodyLargeGray700 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray700,
      );

  static get bodyLargeBaloo2 => theme.textTheme.bodyLarge!.baloo2;
  static get bodyLargeBaloo2Red400 =>
      theme.textTheme.bodyLarge!.baloo2.copyWith(
        color: appTheme.red400,
      );
  static get bodyLargeBaloo2OnPrimaryContainer18 =>
      theme.textTheme.bodyLarge!.baloo2.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 18.fSize,
      );
  static get bodyLargeBoldNotoSansGujarati =>
      theme.textTheme.bodyLarge!.notoSansGujarati.copyWith(fontSize: 20.0, fontWeight: FontWeight.w500);
}
