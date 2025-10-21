import 'dart:math';
import 'dart:ui' as ui;
import 'package:flutter/material.dart';

/// A custom painter that draws an animated hourglass with customizable colors and gradients.
class HourglassPainter extends CustomPainter {
  /// The fill amount of the hourglass (0.0 to 1.0)
  final double fillAmount;

  /// Color of the top and bottom lines
  final Color topBottomColor;

  /// Color of the hourglass outline
  final Color glassColor;

  /// Color of the sand
  final Color sandColor;

  HourglassPainter(this.fillAmount,  this.topBottomColor,
      this.glassColor, this.sandColor);

  @override
  void paint(Canvas canvas, Size size) {
    double hourglassCurve = size.height * 0.5;
    double hourglassInset = size.width / 10;
    double hourglassHalfHeight = (size.height / 2) - hourglassInset;

  

    final outlinePainter = Paint()
      ..color = glassColor
      ..strokeCap = StrokeCap.round
      ..strokeWidth = size.width / 20
      ..style = PaintingStyle.stroke;

    final outlinePainter2 = Paint()
      ..color = topBottomColor
      ..strokeCap = StrokeCap.round
      ..strokeWidth = size.width / 12
      ..style = PaintingStyle.stroke;

    final contentPainter = Paint()
      ..color = sandColor
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 1;

    final outline = Path();

    outline.moveTo(hourglassInset, hourglassInset);
    outline.arcToPoint(Offset(size.width - hourglassInset, hourglassInset));
    outline.arcToPoint(Offset(size.width * 0.6, size.height * 0.45),
        radius: Radius.circular(hourglassCurve), clockwise: true);
    outline.arcToPoint(Offset(size.width * 0.55, size.height * 0.55),
        radius: Radius.circular(20), clockwise: false);
    outline.arcToPoint(Offset(size.width - hourglassInset, size.height - 10),
        radius: Radius.circular(hourglassCurve), clockwise: true);
    outline.arcToPoint(Offset(hourglassInset, size.height - hourglassInset));
    outline.arcToPoint(Offset(size.width * 0.45, size.height * 0.55),
        radius: Radius.circular(hourglassCurve), clockwise: true);
    outline.arcToPoint(Offset(size.width * 0.4, size.height * 0.45),
        radius: Radius.circular(20), clockwise: false);
    outline.arcToPoint(Offset(hourglassInset, hourglassInset),
        radius: Radius.circular(hourglassCurve), clockwise: true);
    outline.close();

    final topContent = Path();
    // Make top part completely empty when fillAmount is 1.0
    double topStartHeight =
        fillAmount >= 0.99 ? 0 : size.height * (0.4 - ((1 - fillAmount) * 0.3));
    double topEndHeight = fillAmount >= 0.99 ? 0 : size.height * 0.48;
    double topContentStartWidthOffset = getTopContentWidthOffset(
        size.width, topStartHeight, hourglassHalfHeight, hourglassInset);
    double topContentEndWidthOffset = getTopContentWidthOffset(
        size.width, topEndHeight, hourglassHalfHeight, hourglassInset);

    // Only create the path if there's sand in the top part
    if (fillAmount < 0.99) {
      topContent.moveTo(topContentStartWidthOffset, topStartHeight);
      topContent.arcToPoint(Offset(hourglassInset + topContentEndWidthOffset, topEndHeight),
          radius: Radius.circular(hourglassCurve), clockwise: false);
      topContent.arcToPoint(
          Offset((size.width - hourglassInset) - topContentEndWidthOffset, topEndHeight));
      topContent.arcToPoint(Offset(size.width - topContentStartWidthOffset, topStartHeight),
          radius: Radius.circular(hourglassCurve), clockwise: false);
      topContent.close();
    }

    final bottomContent = Path();
    double bottomStartHeight = size.height - 12;
    // Adjust bottom end height calculation
    double bottomEndHeight = size.height * (0.95 - (fillAmount * 0.32));
    double bottomContentStartWidthOffset = getBottomContentWidthOffset(
        size.width, bottomStartHeight, hourglassHalfHeight, hourglassInset);
    double bottomContentEndWidthOffset = getBottomContentWidthOffset(
        size.width, bottomEndHeight, hourglassHalfHeight, hourglassInset);

    bottomContent.moveTo(bottomContentStartWidthOffset, bottomStartHeight);
    // Modify these arc points to match the glass curve better
    bottomContent.arcToPoint(
        Offset(hourglassInset + bottomContentEndWidthOffset, bottomEndHeight),
        radius: Radius.circular(hourglassCurve),
        clockwise: true);
    // Use the same curve as the glass outline
    bottomContent.arcToPoint(
        Offset((size.width - hourglassInset) - bottomContentEndWidthOffset, bottomEndHeight),
        radius: Radius.circular(hourglassCurve * 1.5));
    bottomContent.arcToPoint(
        Offset(size.width - bottomContentStartWidthOffset, bottomStartHeight),
        radius: Radius.circular(hourglassCurve),
        clockwise: true);
    bottomContent.close();

    final fallingSand = Path();
    fallingSand.moveTo(size.width * 0.4, (size.height * 0.48));
    fallingSand.arcToPoint(Offset(size.width * 0.495, (size.height * 0.57)));
    fallingSand.lineTo(size.width * 0.48, size.height - hourglassInset);
    fallingSand.lineTo(size.width * 0.52, size.height - hourglassInset);
    fallingSand.arcToPoint(Offset(size.width * 0.505, (size.height * 0.57)));
    fallingSand.arcToPoint(Offset(size.width * 0.6, (size.height * 0.48)));
    fallingSand.close();

    final colors = [sandColor, sandColor.withValues(alpha: 0.9)];
    final colorStops = [0.1, 0.9];

    final gradient = ui.Gradient.linear(Offset(size.width / 2, bottomStartHeight - 1),
        Offset(size.width / 2, bottomEndHeight), colors, colorStops, TileMode.clamp);

    final bottomContentPainter = Paint()
      ..shader = gradient
      ..style = PaintingStyle.fill
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 1;

    canvas.drawPath(fallingSand, contentPainter);
    // Only draw topContent if there's sand in the top part
    if (fillAmount < 0.99) {
      canvas.drawPath(topContent, contentPainter);
    }
    canvas.drawPath(bottomContent, bottomContentPainter);
    canvas.drawPath(outline, outlinePainter);
    canvas.drawLine(Offset(0, 0), Offset(size.width, 0), outlinePainter2);
    canvas.drawLine(Offset(0, size.height), Offset(size.width, size.height), outlinePainter2);
  }

  double getTopContentWidthOffset(
      double width, double height, double fullHeight, double inset) {
    return (((width / 2) - inset) * sin((height / fullHeight) * (pi / 3.8)));
  }

  double getBottomContentWidthOffset(
      double width, double height, double fullHeight, double inset) {
    return (((width / 2) - inset) * sin(1 - ((height / fullHeight) * (pi / 8.9))));
  }

  @override
  bool shouldRepaint(covariant HourglassPainter oldDelegate) {
    return oldDelegate.fillAmount != fillAmount;
  }
}

/// A customizable hourglass widget with animated fill and gradient colors.
class Hourglass extends StatelessWidget {
  /// The fill amount of the hourglass (0.0 to 1.0)
  final double fillAmount;

  /// The width of the hourglass
  final double width;

  /// The height of the hourglass
  final double height;

  /// Color of the top and bottom lines
  final Color topBottomColor;

  /// Color of the hourglass outline
  final Color glassColor;

  /// Color of the sand
  final Color sandColor;

  const Hourglass({
    super.key,
    required this.fillAmount,
    this.width = 100,
    this.height = 150,
    required this.topBottomColor,
    required this.glassColor,
    required this.sandColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      child: CustomPaint(
        painter: HourglassPainter(
          fillAmount,
          topBottomColor,
          glassColor,
          sandColor,
        ),
      ),
    );
  }
}
