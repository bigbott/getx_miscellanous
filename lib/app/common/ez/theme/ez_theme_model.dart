import 'dart:ui';

import 'package:flutter/material.dart';

class ThemeModel {
  final String title;
  final String bgImageDark;
  final String bgImageLight;
  final ColorScheme colorSchemeDark;
  final ColorScheme colorSchemeLight;

  ThemeModel({
    required this.title,
    required this.bgImageDark,
    required this.bgImageLight,
    required this.colorSchemeDark,
    required this.colorSchemeLight,
  });
}
