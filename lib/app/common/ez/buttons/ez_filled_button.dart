import 'package:flutter/material.dart';

final class EzFilledButton extends StatelessWidget {
  const EzFilledButton({
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
      child: FilledButton(
        onPressed: disabled ? null : onPressed,
        child: child,
      ),
    );
  }
}