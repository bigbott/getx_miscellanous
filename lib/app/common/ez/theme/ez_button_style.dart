import 'package:flutter/material.dart';

abstract final class EzButtonStyle {
  EzButtonStyle._();

  static ButtonStyle getElevatedButtonStyle(ColorScheme colorScheme, Brightness brightness) {
    return ButtonStyle(
      elevation: WidgetStateProperty.resolveWith<double?>(
        (states) {
          if (states.contains(WidgetState.pressed)) {
            return 0;
          }
          return 3;
        },
      ),
      padding: const WidgetStatePropertyAll(
        EdgeInsets.symmetric(horizontal: 20, vertical: 14),
      ),
      backgroundColor: WidgetStateProperty.resolveWith<Color>(
        (states) {
          if (states.contains(WidgetState.pressed)) {
            return colorScheme.secondary.withValues(alpha: 0.5);
          }
          if (states.contains(WidgetState.hovered)) {
            return colorScheme.primary.withValues(alpha: 0.5);
          }
          return colorScheme.primary;
        },
      ),
      overlayColor: WidgetStateProperty.resolveWith<Color>(
        (states) {
          if (states.contains(WidgetState.pressed)) {
            return colorScheme.secondary.withValues(alpha: 0.7);
          }
          if (states.contains(WidgetState.hovered)) {
            return colorScheme.primary.withValues(alpha: 0.5);
          }
          return colorScheme.primary;
        },
      ),
      shadowColor:
          WidgetStatePropertyAll(brightness == Brightness.dark ? Colors.white : Colors.black),
      foregroundColor: WidgetStatePropertyAll(colorScheme.onPrimary),
      shape: WidgetStatePropertyAll(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14),
          side: BorderSide(
            color: brightness == Brightness.dark ? Colors.white : Colors.black54,
            width: 0.5,
          ),
        ),
      ),
      textStyle: WidgetStateProperty.resolveWith<TextStyle?>(
        (states) {
          if (states.contains(WidgetState.hovered)) {
            return TextStyle(
                color: colorScheme.onPrimary,
                fontSize: 16,
                fontWeight: FontWeight.w800,
                fontFamily: 'OpenSans',
                fontVariations: [
                  FontVariation('wght', 800),
                ]);
          }
          return TextStyle(
              color: colorScheme.onPrimary,
              fontSize: 17,
              fontWeight: FontWeight.w600,
              fontFamily: 'OpenSans',
              fontVariations: [
                FontVariation('wght', 600),
              ]);
        },
      ),
    );
  }

  static getOutlinedButtonStyle(ColorScheme colorScheme, Brightness brightness) {
    return ButtonStyle(
      padding: const WidgetStatePropertyAll(
        EdgeInsets.symmetric(horizontal: 20, vertical: 14),
      ),
      backgroundColor: WidgetStateProperty.resolveWith<Color>(
        (states) {
          if (states.contains(WidgetState.pressed)) {
            return colorScheme.secondary.withValues(alpha: 0.5);
          }
          if (states.contains(WidgetState.hovered)) {
            return colorScheme.primary.withValues(alpha: 0.5);
          }
          return colorScheme.primary;
        },
      ),
      overlayColor: WidgetStateProperty.resolveWith<Color>(
        (states) {
          if (states.contains(WidgetState.pressed)) {
            return colorScheme.secondary.withValues(alpha: 0.7);
          }
          if (states.contains(WidgetState.hovered)) {
            return colorScheme.primary.withValues(alpha: 0.5);
          }
          return colorScheme.primary;
        },
      ),
      shadowColor:
          WidgetStatePropertyAll(brightness == Brightness.dark ? Colors.white : Colors.black),
      foregroundColor: WidgetStatePropertyAll(colorScheme.onPrimary),
      shape: WidgetStateProperty<OutlinedBorder?>.fromMap(
        {
          WidgetState.hovered: StadiumBorder(),
        },
      ),
      side: WidgetStateProperty<BorderSide?>.fromMap(
        {
          WidgetState.hovered: BorderSide(width: 2.0, color: colorScheme.secondary),
        },
      ),
      textStyle: WidgetStateProperty.resolveWith<TextStyle?>(
        (states) {
          if (states.contains(WidgetState.hovered)) {
            return TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w800,
                fontFamily: 'OpenSans',
                fontVariations: [
                  FontVariation('wght', 800),
                ]);
          }
          return TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w600,
              fontFamily: 'OpenSans',
              fontVariations: [
                FontVariation('wght', 600),
              ]);
        },
      ),
    );
  }

  static getTextButtonStyle(ColorScheme colorScheme, Brightness brightness) {
    return ButtonStyle(
      overlayColor: WidgetStateProperty.resolveWith<Color>(
        (states) {
          if (states.contains(WidgetState.pressed)) {
            return colorScheme.secondary.withValues(alpha: 0.5);
          }
          if (states.contains(WidgetState.hovered)) {
            return colorScheme.primary.withValues(alpha: 0.2);
          }
          return Colors.transparent;
        },
      ),
      textStyle: WidgetStateProperty.resolveWith<TextStyle?>(
        (states) {
          if (states.contains(WidgetState.hovered)) {
            return TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                fontFamily: 'OpenSans',
                fontVariations: [
                  FontVariation('wght', 600),
                ]);
          }
          return TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w400,
              fontFamily: 'OpenSans',
              fontVariations: [
                FontVariation('wght', 400),
              ]);
        },
      ),
    );
  }

  static getIconButtonStyle(ColorScheme colorScheme, Brightness brightness) {
    return ButtonStyle().copyWith(
      overlayColor: WidgetStateProperty.resolveWith<Color>(
        (states) {
          if (states.contains(WidgetState.pressed)) {
            return colorScheme.secondary.withValues(alpha: 0.7);
          }
          if (states.contains(WidgetState.hovered)) {
            return colorScheme.primary.withValues(alpha: 0.32);
          }
          return Colors.transparent;
        },
        
      ),
    
    );
  }
}
