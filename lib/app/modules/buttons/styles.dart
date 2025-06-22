import 'package:flutter/material.dart';

final class Styles {
  Styles._();

  static const wideBlue = ButtonStyle(
    backgroundColor: WidgetStatePropertyAll<Color>(Colors.blue),
    minimumSize: WidgetStatePropertyAll<Size>(Size(double.infinity, 70)),
    foregroundColor: WidgetStatePropertyAll<Color>(Colors.yellow),
  );

  static const prevNext = ButtonStyle (
    foregroundColor: WidgetStatePropertyAll<Color>(Colors.black),
    backgroundColor: WidgetStatePropertyAll<Color>(Colors.yellow),

  );
  static const red = ButtonStyle (
    foregroundColor: WidgetStatePropertyAll<Color>(Colors.white),    
    backgroundColor: WidgetStatePropertyAll<Color>(Colors.red),
  );
}