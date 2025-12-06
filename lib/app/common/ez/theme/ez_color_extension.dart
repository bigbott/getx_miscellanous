import 'dart:math';

import 'package:flutter/material.dart';

extension A on Color {
  double calculateContrastRatio(Color other) {
    final lum1 = computeLuminance();
    final lum2 = other.computeLuminance();
    return (max(lum1, lum2) + 0.05) / (min(lum1, lum2) + 0.05);
  }

  /// Helper: checks if contrast meets WCAG AA for normal text
  bool hasSufficientContrast(Color other) => calculateContrastRatio(other) >= 4.5;

  /// Helper: WCAG AAA for normal text, AA for large text
  bool hasEnhancedContrast(Color other) => calculateContrastRatio(other) >= 7.0;

  /// Finds a shade (darker/lighter version) of this seed color
  /// that has at least [targetRatio] contrast against [background].
  ///
  /// Returns the closest achievable shade.
  /// Prints warnings if:
  /// - Target ratio is impossible (e.g. asking for 10:1 on gray background)
  /// - Final contrast is < 4.5 (not AA compliant for normal text)
  Color findContrastingShade({
    required Color background,
    required double targetRatio,
    int maxIterations = 50,
    double precision = 0.05,
    double maxDeltaLightness = 0.3, // NEW: maximum allowed deviation from seed
  }) {
    if (targetRatio < 1.0) {
      debugPrint('Warning: targetRatio should be ≥ 1.0. Clamping to 1.0');
      targetRatio = 1.0;
    }

    final backgroundLuminance = background.computeLuminance() + 0.05;
    final seedHsl = HSLColor.fromColor(this);

    double contrastOf(Color c) {
      final l = c.computeLuminance() + 0.05;
      return l > backgroundLuminance ? l / backgroundLuminance : backgroundLuminance / l;
    }

    final originalContrast = contrastOf(this);
    if ((originalContrast - targetRatio).abs() < precision) {
      return this;
    }
    if (originalContrast >= targetRatio) {
      return this;
    }

    Color? bestColor;
    double bestContrast = originalContrast;
    double closestDiff = (originalContrast - targetRatio).abs();

    for (final lighten in [true, false]) {
      double factor = seedHsl.lightness;
      final step = lighten ? 0.05 : -0.05;
      for (int i = 0; i < maxIterations; i++) {
        // Clamp factor within allowed range
        final delta = (factor - seedHsl.lightness).abs();
        if (delta > maxDeltaLightness) break;
        final candidateHsl = seedHsl.withLightness(factor.clamp(0.0, 1.0));
        final candidate = candidateHsl.toColor();
        final contrast = contrastOf(candidate);
        final diff = (contrast - targetRatio).abs();
        if (diff < closestDiff) {
          closestDiff = diff;
          bestColor = candidate;
          bestContrast = contrast;
        }
        if (contrast >= targetRatio) {
          _printResult(candidate, contrast, targetRatio, background);
          return candidate;
        }
        factor += step;
        if (factor < 0.0 || factor > 1.0) break;
      }
    }
    bestColor ??= this;
    _printResult(bestColor, bestContrast, targetRatio, background);
    return bestColor;
  }

  void _printResult(Color result, double achieved, double target, Color bg) {
    final diff = (achieved - target).abs();
    final isImpossible = achieved < target && (achieved / target) < 0.95;

    if (isImpossible) {
      debugPrint(
        'Warning: Could not reach target contrast $target:1\n'
        '       Seed: ${this.toHex()} → Best shade: ${result.toHex()}\n'
        '       Background: ${bg.toHex()}\n'
        '       Achieved: ${achieved.toStringAsFixed(2)}:1 (only ${(achieved / target * 100).toStringAsFixed(1)}% of target)',
      );
    } else if (diff > 0.3) {
      debugPrint(
        'Warning: Contrast target $target:1 not fully met.\n'
        '       Achieved: ${achieved.toStringAsFixed(2)}:1 with ${result.toHex()} on ${bg.toHex()}',
      );
    }

    if (achieved < 4.5) {
      debugPrint(
        'Warning: Contrast ratio ${achieved.toStringAsFixed(2)}:1 is BELOW 4.5:1 → NOT AA compliant for normal text!\n'
        '       Colors: ${result.toHex()} on ${bg.toHex()}',
      );
    }
  }

   String toHex() {
    return '0x${toARGB32().toRadixString(16).padLeft(8, '0').toUpperCase()}';
  }
}
