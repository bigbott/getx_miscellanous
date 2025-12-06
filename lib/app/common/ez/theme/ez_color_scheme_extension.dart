import 'dart:math';
import 'package:flutter/material.dart';
import 'package:getx_miscellanous/app/common/ez/theme/ez_color_extension.dart';

extension A on ColorScheme {
  ColorScheme fromSurface(Color surfaceColor) {
    final HSLColor surfaceHsl = HSLColor.fromColor(surfaceColor);

    Color primaryInterpolatingColor =
        brightness == Brightness.dark ? Colors.white : Colors.black;
    Color secondaryInterpolatingColor = brightness == Brightness.dark
        ? Colors.yellow.shade100
        : const Color.fromARGB(255, 14, 10, 63);
    Color tertiaryInterpolatingColor = brightness == Brightness.dark
        ? Colors.green.shade50
        : const Color.fromARGB(255, 6, 59, 13);

    final Color primary = Color.lerp(surfaceColor, primaryInterpolatingColor, 0.8)!;

    final Color secondary = Color.lerp(surfaceColor, secondaryInterpolatingColor, 0.8)!;

    final Color tertiary = Color.lerp(surfaceColor, tertiaryInterpolatingColor, 0.8)!;

    // Create error color (reddish, but harmonious with surface)
    final Color error = surfaceHsl.withHue(0).withSaturation(0.8).withLightness(0.5).toColor();

    // Generate lighter and darker variants
    final Color onSurface =
        surfaceHsl.lightness > 0.5 ? Colors.black87 : Colors.white.withAlpha(230);

    final Color surfaceVariant =
        surfaceHsl.withLightness((surfaceHsl.lightness * 1.2).clamp(0.0, 1.0)).toColor();

    final Color outline = surfaceHsl
        .withSaturation((surfaceHsl.saturation * 0.3).clamp(0.0, 1.0))
        .withLightness(0.6)
        .toColor();

    return ColorScheme(
      brightness: brightness,
      // Primary colors
      primary: primary,
      onPrimary: _getContrastingColor(primary),
      primaryContainer: primary.withValues(alpha: 0.3),
      onPrimaryContainer: _getContrastingColor(primary.withValues(alpha: 0.3)),

      // Secondary colors
      secondary: secondary,
      onSecondary: _getContrastingColor(secondary),
      secondaryContainer: secondary.withValues(alpha: 0.3),
      onSecondaryContainer: _getContrastingColor(secondary.withValues(alpha: 0.3)),

      // Tertiary colors
      tertiary: tertiary,
      onTertiary: _getContrastingColor(tertiary),
      tertiaryContainer: tertiary.withValues(alpha: 0.3),
      onTertiaryContainer: _getContrastingColor(tertiary.withValues(alpha: 0.3)),

      // Error colors
      error: error,
      onError: _getContrastingColor(error),
      errorContainer: error.withValues(alpha: 0.3),
      onErrorContainer: _getContrastingColor(error.withValues(alpha: 0.3)),

      // Surface colors
      surface: surfaceColor,
      onSurface: onSurface,
      surfaceVariant: surfaceVariant,
      onSurfaceVariant: _getContrastingColor(surfaceVariant),

      // Other colors
      outline: outline,
      outlineVariant: outline.withValues(alpha: 0.5),
      shadow: Colors.black,
      scrim: Colors.black.withValues(alpha: 0.8),
      inverseSurface: _getInverseColor(surfaceColor),
      onInverseSurface: _getContrastingColor(_getInverseColor(surfaceColor)),
      inversePrimary: _getInverseColor(primary),

      // Background (for older Flutter versions compatibility)
      background: surfaceColor,
      onBackground: onSurface,
    );
  }

  static Color _getContrastingColor(Color color) {
    final double luminance = color.computeLuminance();
    return luminance > 0.5 ? Colors.black87 : Colors.white.withAlpha(230);
  }

  // Helper method to get inverse color
  static Color _getInverseColor(Color color) {
    final HSLColor hsl = HSLColor.fromColor(color);
    return hsl.withLightness(1.0 - hsl.lightness).toColor();
  }

  ColorScheme fromSurfaceAndSeeds(
    Color surface,
    Color primarySeed,
    Color secondarySeed,
    Color tertiarySeed,
  ) {
    final isLight = brightness == Brightness.light;

    // On-colors based on brightness
   // final onPrimary = isLight ? Colors.white : Colors.black;
    final onSecondary = isLight ? Colors.white : Colors.black;
    final onTertiary = isLight ? Colors.white : Colors.black;

    // final onSurface = isLight ? Colors.black87 : Colors.white70;

    final onSurfaceSeed = Colors.grey; //isLight ? Colors.white : Colors.black;
    final onSurface = onSurfaceSeed.findContrastingShade(
      background: surface,
      targetRatio: 10.0,
    );
    final primary = primarySeed.findContrastingShade(
      background: surface,
      targetRatio: 7.0,
    );
    var onPrimarySeed = isLight ? Colors.white : Colors.black;
    onPrimarySeed = Color.lerp(onPrimarySeed, secondarySeed, 0.3)!;
    var onPrimary = onPrimarySeed.findContrastingShade(
      background: primary,
      targetRatio: 7,
    );

    final secondary = secondarySeed.findContrastingShade(
      background: surface,
      targetRatio: 5.0,
    );
    final tertiary = tertiarySeed.findContrastingShade(
      background: surface,
      targetRatio: 7.0,
    );

    // Container colors - lighter versions with less saturation
    final primaryContainer = _createContainerColor(primary, isLight);
    final secondaryContainer = _createContainerColor(secondary, isLight);
    final tertiaryContainer = _createContainerColor(tertiary, isLight);

    // On-container colors should contrast with their containers
    final onPrimaryContainer = primary.findContrastingShade(
      background: primaryContainer,
      targetRatio: 4.5,
    );
    final onSecondaryContainer = secondary.findContrastingShade(
      background: secondaryContainer,
      targetRatio: 4.5,
    );
    final onTertiaryContainer = tertiary.findContrastingShade(
      background: tertiaryContainer,
      targetRatio: 4.5,
    );
    
    return ColorScheme(
      brightness: brightness,
      primary: primary,
      onPrimary: onPrimary,
      primaryContainer: primaryContainer,
      onPrimaryContainer: onPrimaryContainer,
      secondary: secondary,
      onSecondary: onSecondary,
      secondaryContainer: secondaryContainer,
      onSecondaryContainer: onSecondaryContainer,
      tertiary: tertiary,
      onTertiary: onTertiary,
      tertiaryContainer: tertiaryContainer,
      onTertiaryContainer: onTertiaryContainer,
      surface: surface,
      onSurface: onSurface,
      error: isLight ? const Color(0xFFB00020) : const Color(0xFFFAB4C1),
      onError: isLight ? Colors.white : Colors.black,
    );
  }

  Color _createContainerColor(Color color, bool isLight) {
    final hsl = HSLColor.fromColor(color);

    if (isLight) {
      // Light theme: make containers lighter and less saturated
      return hsl
          .withLightness((hsl.lightness + 0.3).clamp(0.0, 0.95))
          .withSaturation((hsl.saturation * 0.6).clamp(0.0, 1.0))
          .toColor();
    } else {
      // Dark theme: make containers darker and less saturated
      return hsl
          .withLightness((hsl.lightness - 0.2).clamp(0.1, 1.0))
          .withSaturation((hsl.saturation * 0.5).clamp(0.0, 1.0))
          .toColor();
    }
  }

  double _relativeLuminance(Color color) {
    // Convert RGB to relative luminance
    final r = _linearize(color.red / 255.0);
    final g = _linearize(color.green / 255.0);
    final b = _linearize(color.blue / 255.0);

    return 0.2126 * r + 0.7152 * g + 0.0722 * b;
  }

  double _linearize(double channel) {
    if (channel <= 0.03928) {
      return channel / 12.92;
    }
    return pow((channel + 0.055) / 1.055, 2.4).toDouble();
  }

  double _contrastRatio(Color color1, Color color2) {
    final lum1 = _relativeLuminance(color1);
    final lum2 = _relativeLuminance(color2);

    final lighter = lum1 > lum2 ? lum1 : lum2;
    final darker = lum1 > lum2 ? lum2 : lum1;

    return (lighter + 0.05) / (darker + 0.05);
  }

  void printMe() {
    String colorToHex(Color color) {
      return '0x${color.toARGB32().toRadixString(16).padLeft(8, '0').toUpperCase()}';
    }

    print('''
ColorScheme(
  brightness: Brightness.${brightness.name},
  primary: Color(${colorToHex(primary)}),
  onPrimary: Color(${colorToHex(onPrimary)}),
  primaryContainer: Color(${colorToHex(primaryContainer)}),
  onPrimaryContainer: Color(${colorToHex(onPrimaryContainer)}),
  secondary: Color(${colorToHex(secondary)}),
  onSecondary: Color(${colorToHex(onSecondary)}),
  secondaryContainer: Color(${colorToHex(secondaryContainer)}),
  onSecondaryContainer: Color(${colorToHex(onSecondaryContainer)}),
  tertiary: Color(${colorToHex(tertiary)}),
  onTertiary: Color(${colorToHex(onTertiary)}),
  tertiaryContainer: Color(${colorToHex(tertiaryContainer)}),
  onTertiaryContainer: Color(${colorToHex(onTertiaryContainer)}),
  error: Color(${colorToHex(error)}),
  onError: Color(${colorToHex(onError)}),
  surface: Color(${colorToHex(surface)}),
  onSurface: Color(${colorToHex(onSurface)}),)''');
  }
}
