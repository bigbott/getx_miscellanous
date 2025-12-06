import 'package:flutter/material.dart';

final class EzOutlinedButton extends StatelessWidget {
  const EzOutlinedButton({
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
      child: OutlinedButton(
        onPressed: disabled ? null : onPressed,
        child: child,
      ),
    );
  }
}