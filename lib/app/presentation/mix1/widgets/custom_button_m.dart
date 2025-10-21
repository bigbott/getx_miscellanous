
import 'package:flutter/material.dart';
import 'package:mix/mix.dart';

class CustomButtonM extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final bool isPrimary;

  const CustomButtonM({
    super.key,
    required this.text,
    required this.onPressed,
    this.isPrimary = true,
  });

  Style get buttonStyle => Style(
    $box.padding(24, 14),
    $box.borderRadius(12),
    $box.alignment.center(),
    $box.animated.duration(Duration(milliseconds: 200)),
    
    $on.light(primaryStyles),
    $on.hover(hoverStyles),
    $on.press(pressedStyles),
  );

  Style get primaryStyles => Style(
    $box.color.blue(),
    $box.shadow(
      color: Colors.blue.withValues(alpha: 0.3),
      blurRadius: 6,
      offset: Offset(0, 3),
    ),
  );

  Style get secondaryStyles => Style(
    $box.color.red(),
    $box.border(color: Colors.grey.shade400, width: 2),
    $box.shadow(
      color: Colors.grey.withValues(alpha: 0.3),
      blurRadius: 6,
      offset: Offset(0, 3),
    ),
  );

  Style get hoverStyles => Style(
    $box.color(isPrimary ? Colors.blue.shade600 : Colors.grey.shade50),
    $box.shadow(
      color: (isPrimary ? Colors.blue : Colors.grey).withValues(alpha: 0.3),
      blurRadius: 12,
      offset: Offset(0, 6),
    ),
  );

  Style get pressedStyles => Style(
    $box.color(isPrimary ? Colors.blue.shade800 : Colors.grey.shade100),
  );

  Style get textStyle => Style(
    $text.fontSize(16),
    $text.style.fontWeight(FontWeight.w600),
    $text.style.letterSpacing(0.5),
    $text.color(isPrimary ? Colors.white : Colors.blue),
  );

  @override
  Widget build(BuildContext context) {
    return PressableBox(
      onPress: onPressed,
      style: buttonStyle,
      child: StyledText(text, style: textStyle),
    );
  }
}