import 'package:flutter/material.dart';
import 'package:flutter_m3shapes/flutter_m3shapes.dart';

import 'ez_glass_container.dart';
import 'ez_scale.dart';

final class EzGlassShapedButton extends StatelessWidget {
  final Widget? child;
  final GestureTapCallback? onTap;
  final double? width;
  final double? height;
  final double? opacity;
  final Color? borderColor;
  final Color? color;
  final Shapes shape;

  const EzGlassShapedButton(
      {super.key,
      this.child,
      this.onTap,
      this.width = double.infinity,
      this.height = 60,
      this.opacity = 0.2,
      this.borderColor = Colors.white,
      this.color = Colors.white,
      required this.shape,});

  @override
  Widget build(Object context) {
    return EzScaleOnTap(
        onTap: onTap,
        child: MouseRegion(
          cursor: SystemMouseCursors.click,
          child: M3Container(
            color: color,
            clipBehavior: Clip.antiAlias,
            shape,
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
          ),
        ));
  }
}
