import 'package:flutter/material.dart';

class Ez3dText extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color color;
  final Color? shadowColor;
  final int depth;

  const Ez3dText(
    this.text, {
    super.key,
    this.fontSize = 48,
    this.color = Colors.white,
    this.shadowColor,
    this.depth = 2,
  });

  @override
  Widget build(BuildContext context) {
    var theShadowColor = shadowColor ?? Colors.black87;
    return Stack(
      children: [
        // Create shadow layers
        for (int i = depth; i > 0; i--)
          Positioned(
            left: i.toDouble(),
            top: i.toDouble(),
            child:  StyledText(text: text, fontSize: fontSize, color: theShadowColor),
          ),
        // Main text on top
         StyledText(text: text, fontSize: fontSize, color: color),
      ],
    );
  }

}

class StyledText extends StatelessWidget {
  const StyledText({
    super.key,
    required this.text,
    required this.fontSize,
    required this.color,
  });

  final String text;
  final double fontSize;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        color: color,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
