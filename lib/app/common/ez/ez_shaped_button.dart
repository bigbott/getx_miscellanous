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

  const EzShapedButton({
    super.key,
    this.child,
    this.onTap,
    this.width = double.infinity,
    this.height = 60,
    this.color = Colors.green,
    required this.shape,
  });

  @override
  Widget build(BuildContext context) {
    const shadowOffset = 3.0;
    Color theColor = color!;
    return EzScaleOnTap(
      onTap: onTap,
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        onHover: (event) {
          theColor = color!.withValues(alpha: 0.5);
        },
        child: SizedBox(
          width: width == double.infinity ? double.infinity : width! + shadowOffset,
          height: height! + shadowOffset,

          child: Stack(
            clipBehavior: Clip.none,
            children: [
              for (int i = 3; i > 0; i--)
                Positioned(
                  left: i.toDouble(),
                  top: i.toDouble(),
                  child: M3Container(
                    shape,
                    width: width == double.infinity ? null : width,
                    height: height,
                    color: Theme.of(context).shadowColor,
                    clipBehavior: Clip.antiAlias,
                    child: Center(child: child),
                  ),
                ),
              Positioned(
                left: 0,
                top: 0,
                child: M3Container(
                  shape,
                  width: width,
                  height: height,
                  color: theColor,
                  clipBehavior: Clip.antiAlias,
                  child: Center(child: child),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}