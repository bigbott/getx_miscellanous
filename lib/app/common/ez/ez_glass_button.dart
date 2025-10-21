import 'package:flutter/material.dart';

import 'ez_glass_container.dart';
import 'ez_scale.dart';

final class EzGlassButton extends StatelessWidget {
  final Widget? child;
  final GestureTapCallback? onTap;
  final double? width;
  final double? height;
  final double? opacity;
  final Color? borderColor;
  final Color? color;

  const EzGlassButton({
    super.key,
    this.child,
    this.onTap,
    this.width = double.infinity,
    this.height = 60,
    this.opacity = 0.2,
    this.borderColor = Colors.white,
    this.color= Colors.white,
  });

  @override
  Widget build(Object context) {
    return EzScaleOnTap(
        onTap: onTap,
        child: MouseRegion(
          cursor: SystemMouseCursors.click,
          child: EzGlassContainer(
            width: width,
            opacity: opacity,
            color: color,
            borderColor: borderColor,
            child: SizedBox(
              width: width,
              height: height,
              child: Center(child: child),
            ),
          ),
        ));
  }
}
