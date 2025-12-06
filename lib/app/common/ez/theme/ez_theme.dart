import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'ez_bg_exension.dart';
import 'ez_button_style.dart';

abstract final class EzTheme {
  EzTheme._();

  static ThemeData getIos(
    ColorScheme colorScheme,
    Brightness brightness,
    [String? bgImage]
  ) {
    return ThemeData(
      brightness: brightness,
      colorScheme: colorScheme,
      fontFamily: 'OpenSans',
      hoverColor: colorScheme.primary.withValues(alpha: 0.3),
      shadowColor: colorScheme.shadow,
      //  highlightColor: colorScheme.primary.withValues(alpha: 0.3),
      appBarTheme: AppBarTheme(
        foregroundColor: colorScheme.primary,
        elevation: 0,
        scrolledUnderElevation: 2,
        centerTitle: true,
        titleTextStyle: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w600,
            color: colorScheme.onSurface,
            fontFamily: 'OpenSans'),
        actionsIconTheme: IconThemeData().copyWith(),
      ),
      textTheme: Typography.englishLike2021.copyWith(
        bodyMedium: const TextStyle(fontSize: 15),
        bodySmall: const TextStyle(fontSize: 14),
        headlineMedium: TextStyle(
          color: colorScheme.primary,
          fontFamily: 'StardosStencil',
          fontSize: 25,
        ),
        labelLarge: const TextStyle(fontSize: 15),
        labelMedium: const TextStyle(fontSize: 14),
        bodyLarge: TextStyle(
          fontSize: 16,
          color: colorScheme.onSurface,
          fontFamily: 'KodeMono',
        ),
      )
      // .apply(
      //   fontFamily: 'OpenSans',
      // )
      ,
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: EzButtonStyle.getElevatedButtonStyle(colorScheme, brightness)),
      outlinedButtonTheme: OutlinedButtonThemeData(
          style: EzButtonStyle.getOutlinedButtonStyle(colorScheme, brightness)),
      textButtonTheme: TextButtonThemeData(
        style: EzButtonStyle.getTextButtonStyle(colorScheme, brightness),
      ),
      iconButtonTheme: IconButtonThemeData(
        style: EzButtonStyle.getIconButtonStyle(colorScheme, brightness),
      ),

      cardTheme: CardThemeData(
        color: colorScheme.surface.withValues(alpha: 0.5),
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: WidgetStateColor.resolveWith(
          (states) => states.contains(WidgetState.focused)
              ? colorScheme.surface.withValues(alpha: 0.05)
              : colorScheme.surface.withValues(alpha: 0.2),
        ),
        iconColor: WidgetStateColor.resolveWith(
          (states) => states.contains(WidgetState.focused)
              ? colorScheme.primary
              : colorScheme.onSurface,
        ),
        prefixIconColor: WidgetStateColor.resolveWith(
          (states) => states.contains(WidgetState.focused)
              ? colorScheme.primary
              : colorScheme.onSurface,
        ),
        suffixIconColor: WidgetStateColor.resolveWith(
          (states) => states.contains(WidgetState.focused)
              ? colorScheme.primary
              : colorScheme.onSurface,
        ),
        labelStyle: WidgetStateTextStyle.resolveWith(
          (states) => states.contains(WidgetState.focused)
              ? TextStyle(color: colorScheme.primary)
              : TextStyle(color: colorScheme.onSurface),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: colorScheme.secondary,
            width: 0.3,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: colorScheme.secondary,
            width: 0.3,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: colorScheme.primary,
            width: 1,
          ),
        ),
        hoverColor: colorScheme.tertiary.withValues(alpha: 0.1),
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      ),
      // textSelectionTheme: TextSelectionThemeData(
      //   cursorColor: colorScheme.secondary,
      //   selectionHandleColor: colorScheme.secondary,
      // ),
      listTileTheme: ListTileThemeData(
        tileColor: colorScheme.surface.withValues(alpha: 0.5),
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        iconColor: colorScheme.primary,
      ),
      dividerTheme: DividerThemeData(
        color: colorScheme.surfaceContainerHighest,
        thickness: 0.5,
        space: 0.5,
      ),
      checkboxTheme: CheckboxThemeData().copyWith(
        checkColor: WidgetStateColor.resolveWith(
          (states) => states.contains(WidgetState.hovered)
              ? colorScheme.secondary
              : colorScheme.primary,
        ),
        // fillColor: WidgetStateColor.resolveWith(
        //   (states) => states.contains(WidgetState.hovered)
        //       ? colorScheme.surface.withValues(alpha: 0.2)
        //       : colorScheme.surface,
        // ),

        fillColor: WidgetStateColor.resolveWith(
          (states) {
            if (states.contains(WidgetState.selected)) {
              return Colors.transparent; // or colorScheme.surface.withValues(alpha: 0.2)
            }
            if (states.contains(WidgetState.hovered)) {
              return colorScheme.surface.withValues(alpha: 0.2);
            }
            return colorScheme.surface;
          },
        ),

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
        shape:
            // RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.all(Radius.circular(4))),
            RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.all(Radius.circular(4)),
          side: BorderSide(width: 2.0, color: colorScheme.primary),
        ),

        side: BorderSide(width: 2.0, color: colorScheme.primary),
        // visualDensity: VisualDensity(horizontal: 1, vertical: 1),
        //  materialTapTargetSize: MaterialTapTargetSize.padded,
        splashRadius: 16,
      ),
      switchTheme: SwitchThemeData(
        thumbColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.disabled)) {
            return colorScheme.onSurface.withValues(alpha: 0.4);
          }
          return colorScheme.primary;
        }),
        trackColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return Colors.transparent;
          }
          if (states.contains(WidgetState.disabled)) {
            return colorScheme.onSurface.withValues(alpha: 0.1);
          }
          return colorScheme.surface.withValues(alpha: 0.2);
          //colorScheme.primary..;
        }),
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
        trackOutlineColor: WidgetStateProperty.resolveWith<Color>(
          (states) {
            if (states.contains(WidgetState.pressed)) {
              return colorScheme.secondary;
            }
            if (states.contains(WidgetState.hovered)) {
              return colorScheme.secondary;
            }
            if (states.contains(WidgetState.disabled)) {
              return colorScheme.onSurface.withValues(alpha: 0.4);
            }
            return colorScheme.primary;
          },
        ),
        splashRadius: 26,
      ),
      sliderTheme: SliderThemeData(
        activeTrackColor: colorScheme.primary,
        inactiveTrackColor: colorScheme.secondary.withValues(alpha: 0.5),
        thumbColor: colorScheme.primary,
        thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15),
        //thumbSize: WidgetStatePropertyAll<Size>(Size(40, 40)),
        overlayColor: colorScheme.primary.withValues(alpha: 0.22),
        overlayShape: RoundSliderOverlayShape(overlayRadius: 25),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: colorScheme.surface..withValues(alpha: 0.5),
        selectedItemColor: colorScheme.primary,
        unselectedItemColor: colorScheme.onSurfaceVariant,
        type: BottomNavigationBarType.fixed,
        elevation: 0,
        showUnselectedLabels: true,
      ),
      iconTheme: IconThemeData().copyWith(),

      pageTransitionsTheme: PageTransitionsTheme(
        builders: {
          TargetPlatform.android: CupertinoPageTransitionsBuilder(),
          TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
        },
      ),
    );
  }
}
