
import 'package:flutter/material.dart';

final class EzElevatedButton extends StatelessWidget {
  const EzElevatedButton({
    super.key,
    required this.child,
    this.onPressed,
    this.width,
    this.height,
    this.disabled = false,
  });

  final Widget child;
  final VoidCallback? onPressed;
  final double? width;
  final double? height;
  final bool disabled;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: disabled ? null : onPressed,
        child: child,
      ),
    );
  }
}