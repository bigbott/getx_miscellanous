import 'package:flutter/material.dart';
import 'package:flutter_m3shapes/flutter_m3shapes.dart';

import 'ez_scale.dart';

final class EzShapedButton extends StatelessWidget {
  final Widget? child;
  final GestureTapCallback? onTap;
  final double? width;
  final double? height;
  final Color? color;
  final Shapes shape;

  const EzShapedButton(
      {super.key,
      this.child,
      this.onTap,
      this.width = double.infinity,
      this.height = 60,
      this.color = Colors.green,
      required this.shape,});

  @override
  Widget build(Object context) {
    return EzScaleOnTap(
        onTap: onTap,
        child: MouseRegion(
          cursor: SystemMouseCursors.click,
          child: M3Container(           
            shape,
            width: width,
            height: height,
            color: color,
            clipBehavior: Clip.antiAlias,
            child: Center(child: child),
          ),
        ));
  }
}
