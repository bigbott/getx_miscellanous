import 'dart:math';
import 'dart:ui' as ui;
import 'package:flutter/material.dart';

class HourglassDimensions {
  final double hourglassCurve;
  final double hourglassInset;
  final double hourglassHalfHeight;

  HourglassDimensions({
    required this.hourglassCurve,
    required this.hourglassInset,
    required this.hourglassHalfHeight,
  });
}

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

  HourglassPainter(this.fillAmount, this.topBottomColor, this.glassColor, this.sandColor);

  @override
  @override
  void paint(Canvas canvas, Size size) {
    final dimensions = _calculateDimensions(size);

    paintContent(canvas, size, dimensions);
    paintOutline(canvas, size, dimensions);
    paintTopBottomLines(canvas, size);
  }

  HourglassDimensions _calculateDimensions(Size size) {
    return HourglassDimensions(
      hourglassCurve: size.height * 0.5,
      hourglassInset: size.width / 10,
      hourglassHalfHeight: (size.height / 2) - (size.width / 10),
    );
  }

  void paintOutline(Canvas canvas, Size size, HourglassDimensions dims) {
    final outlinePainter = Paint()
      ..color = glassColor
      ..strokeCap = StrokeCap.round
      ..strokeWidth = size.width/18
      ..style = PaintingStyle.stroke;

    final outline = Path();

    outline.moveTo(dims.hourglassInset, dims.hourglassInset);
    outline.arcToPoint(Offset(size.width - dims.hourglassInset, dims.hourglassInset));
    outline.arcToPoint(Offset(size.width * 0.6, size.height * 0.45),
        radius: Radius.circular(dims.hourglassCurve), clockwise: true);
    outline.arcToPoint(Offset(size.width * 0.55, size.height * 0.55),
        radius: Radius.circular(20), clockwise: false);
    //outline.arcToPoint(Offset(size.width - dims.hourglassInset, size.height - 10),
    outline.arcToPoint(Offset(size.width - dims.hourglassInset, size.height - dims.hourglassInset),
        radius: Radius.circular(dims.hourglassCurve), clockwise: true);
    outline.arcToPoint(Offset(dims.hourglassInset, size.height - dims.hourglassInset));
    outline.arcToPoint(Offset(size.width * 0.45, size.height * 0.55),
        radius: Radius.circular(dims.hourglassCurve), clockwise: true);
    outline.arcToPoint(Offset(size.width * 0.4, size.height * 0.45),
        radius: Radius.circular(20), clockwise: false);
    outline.arcToPoint(Offset(dims.hourglassInset, dims.hourglassInset),
        radius: Radius.circular(dims.hourglassCurve), clockwise: true);
    outline.close();

    canvas.drawPath(outline, outlinePainter);
  }

  void paintTopBottomLines(Canvas canvas, Size size) {
    final outlinePainter2 = Paint()
      ..color = topBottomColor
      ..strokeCap = StrokeCap.round
      ..strokeWidth = size.width/15
      ..style = PaintingStyle.stroke;

    canvas.drawLine(Offset(0, 0), Offset(size.width, 0), outlinePainter2);
    canvas.drawLine(Offset(0, size.height), Offset(size.width, size.height), outlinePainter2);
  }

  void paintContent(Canvas canvas, Size size, HourglassDimensions dims) {
    paintFallingSand(canvas, size, dims);
    paintTopChamberSand(canvas, size, dims);
    paintBottomChamberSand(canvas, size, dims);
  }

  void paintFallingSand(Canvas canvas, Size size, HourglassDimensions dims) {
    final contentPainter = Paint()
      ..color = sandColor
      ..strokeCap = StrokeCap.round
      ..strokeWidth = size.width/100;

    final fallingSand = Path();
    //fallingSand.moveTo(size.width * 0.4, (size.height * 0.48));
    fallingSand.moveTo(size.width * 0.45, (size.height * 0.45));
    fallingSand.arcToPoint(Offset(size.width * 0.495, (size.height * 0.57)));
    fallingSand.lineTo(size.width * 0.48, size.height - dims.hourglassInset);
    fallingSand.lineTo(size.width * 0.52, size.height - dims.hourglassInset);
    fallingSand.arcToPoint(Offset(size.width * 0.505, (size.height * 0.57)));
   // fallingSand.arcToPoint(Offset(size.width * 0.6, (size.height * 0.48)));
    fallingSand.arcToPoint(Offset(size.width * 0.55, (size.height * 0.45)));
    fallingSand.close();

    canvas.drawPath(fallingSand, contentPainter);
  }

  void paintTopChamberSand(Canvas canvas, Size size, HourglassDimensions dims) {
    if (fillAmount >= 0.95) return;

    final contentPainter = Paint()
      ..color = sandColor
      ..strokeCap = StrokeCap.round
      ..strokeWidth = size.width/100;

    //double topStartHeight = size.height * (0.4 - ((1 - fillAmount) * 0.3));
    double topStartHeight = size.height * (0.48 - ((1 - fillAmount) * 0.42));


    double topEndHeight = fillAmount >= 0.99 ? 0 : size.height * 0.48;
    double topContentStartWidthOffset = getTopContentWidthOffset(
        size.width, topStartHeight, dims.hourglassHalfHeight, dims.hourglassInset);
    double topContentEndWidthOffset = getTopContentWidthOffset(
        size.width, topEndHeight, dims.hourglassHalfHeight, dims.hourglassInset);

    final topContent = Path();
    topContent.moveTo(topContentStartWidthOffset, topStartHeight);
    topContent.arcToPoint(Offset(dims.hourglassInset + topContentEndWidthOffset, topEndHeight),
        radius: Radius.circular(dims.hourglassCurve), clockwise: false);
    topContent.arcToPoint(
        Offset((size.width - dims.hourglassInset) - topContentEndWidthOffset, topEndHeight));
    topContent.arcToPoint(Offset(size.width - topContentStartWidthOffset, topStartHeight),
        radius: Radius.circular(dims.hourglassCurve), clockwise: false);
    topContent.close();

    canvas.drawPath(topContent, contentPainter);
  }

  void paintBottomChamberSand(Canvas canvas, Size size, HourglassDimensions dims) {
    double bottomStartHeight = size.height - 12;
    double bottomEndHeight = size.height * (0.95 - (fillAmount * 0.32));
    double bottomContentStartWidthOffset = getBottomContentWidthOffset(
        size.width, bottomStartHeight, dims.hourglassHalfHeight, dims.hourglassInset);
    double bottomContentEndWidthOffset = getBottomContentWidthOffset(
        size.width, bottomEndHeight, dims.hourglassHalfHeight, dims.hourglassInset);

    final bottomContent = Path();
    bottomContent.moveTo(bottomContentStartWidthOffset, bottomStartHeight);
    bottomContent.arcToPoint(
        Offset(dims.hourglassInset + bottomContentEndWidthOffset, bottomEndHeight),
        radius: Radius.circular(dims.hourglassCurve),
        clockwise: true);
    bottomContent.arcToPoint(
        Offset(
            (size.width - dims.hourglassInset) - bottomContentEndWidthOffset, bottomEndHeight),
        radius: Radius.circular(dims.hourglassCurve * 1.5));
    bottomContent.arcToPoint(
        Offset(size.width - bottomContentStartWidthOffset, bottomStartHeight),
        radius: Radius.circular(dims.hourglassCurve),
        clockwise: true);
    bottomContent.close();

    final colors = [sandColor, sandColor.withValues(alpha: 0.9)];
    final colorStops = [0.1, 0.9];

    final gradient = ui.Gradient.linear(Offset(size.width / 2, bottomStartHeight - 1),
        Offset(size.width / 2, bottomEndHeight), colors, colorStops, TileMode.clamp);

    final bottomContentPainter = Paint()
      ..shader = gradient
      ..style = PaintingStyle.fill
      ..strokeCap = StrokeCap.round
      ..strokeWidth = size.width/100;

    canvas.drawPath(bottomContent, bottomContentPainter);
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
