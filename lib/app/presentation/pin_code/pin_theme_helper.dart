import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

mixin PinThemeHelper {
  final defaultPinTheme = PinTheme(
    width: 56,
    height: 60,
    textStyle: TextStyle(
      fontSize: 22,
      color: const Color.fromRGBO(30, 60, 87, 1),
    ),
    decoration: BoxDecoration(
      color: Color.fromRGBO(222, 231, 240, .57),
      borderRadius: BorderRadius.circular(8),
      border: Border.all(color: Colors.transparent),
    ),
  );

  final focusPinTheme = PinTheme(
    height: 68,
    width: 64,
    textStyle: TextStyle(
      fontSize: 22,
      color: const Color.fromRGBO(30, 60, 87, 1),
    ),
    decoration: BoxDecoration(
      border: Border.all(color: Colors.blue.shade200),
    ),
  );

  final cursor = Column(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
      Container(
        margin: const EdgeInsets.only(bottom: 9),
        width: 22,
        height: 3,
        color: Colors.blue,
      ),
    ],
  );
}
