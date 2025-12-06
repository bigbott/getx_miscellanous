import 'package:flutter/material.dart';

class EzCheckbox extends StatelessWidget {
  final bool? value;
  final ValueChanged<bool?>? onChanged;
  final bool tristate;
  final MouseCursor? mouseCursor;
  final Color? activeColor;
  final WidgetStateProperty<Color?>? fillColor;
  final Color? checkColor;
  final WidgetStateProperty<Color?>? overlayColor;
  final double? splashRadius;
  final MaterialTapTargetSize? materialTapTargetSize;
  final VisualDensity? visualDensity;
  final FocusNode? focusNode;
  final bool autofocus;
  final OutlinedBorder? shape;
  final BorderSide? side;
  final bool isError;
  final String? semanticLabel;
  final bool showBorderWhenSelected;

  const EzCheckbox({
    super.key,
    required this.value,
    required this.onChanged,
    this.tristate = false,
    this.mouseCursor,
    this.activeColor,
    this.fillColor,
    this.checkColor,
    this.overlayColor,
    this.splashRadius,
    this.materialTapTargetSize,
    this.visualDensity,
    this.focusNode,
    this.autofocus = false,
    this.shape,
    this.side,
    this.isError = false,
    this.semanticLabel,
    this.showBorderWhenSelected = true,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final checkboxTheme = theme.checkboxTheme;
    
    // Get border settings from theme or widget
    final borderSide = side ?? checkboxTheme.side;
    final borderShape = shape ?? checkboxTheme.shape;
    final borderRadius = borderShape is RoundedRectangleBorder 
        ? borderShape.borderRadius 
        : BorderRadius.circular(4);

    Widget checkbox = Checkbox(
      value: value,
      onChanged: onChanged,
      tristate: tristate,
      mouseCursor: mouseCursor,
      activeColor: activeColor,
      fillColor: fillColor,
      checkColor: checkColor,
      overlayColor: overlayColor,
      splashRadius: splashRadius,
      materialTapTargetSize: materialTapTargetSize,
      visualDensity: visualDensity,
      focusNode: focusNode,
      autofocus: autofocus,
      shape: shape,
      side: side,
      isError: isError,
      semanticLabel: semanticLabel,
    );

    // Add border decoration when selected if enabled
    if (showBorderWhenSelected && value == true && borderSide != null) {
      checkbox = Container(
        width: 18.4, 
        height: 18.4,
        decoration: BoxDecoration(
          border: Border.all(
            color: borderSide.color,
            width: borderSide.width,
          ),
          borderRadius: borderRadius as BorderRadius?,
        ),
        child: checkbox,
      );
    }

    return Transform.scale(
      scale: 1.7,
      child: checkbox,
    );
  }
}