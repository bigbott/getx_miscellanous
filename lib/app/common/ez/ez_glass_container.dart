import 'dart:ui';

import 'package:flutter/material.dart';

final class EzGlassContainer extends StatelessWidget {
  final Color? color;
  final double? borderRadius;
  final Widget? child;
  final double? width;
  final double? height;
  final double? opacity;
  final Color? borderColor;

  const EzGlassContainer({
    super.key,
    this.color = Colors.white,
    this.borderRadius = 10,
    this.child, 
    this.width, 
    this.height,
    this.opacity = 0.2, 
    this.borderColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: color!.withValues(alpha: opacity),
        border: Border.all(
          color: borderColor!,
          width: 0.5,
        ),
        borderRadius: BorderRadius.all(Radius.circular(borderRadius!)),
      ),
      child: child,
    );
  }
}
