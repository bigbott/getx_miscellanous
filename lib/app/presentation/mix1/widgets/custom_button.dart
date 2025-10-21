import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  final String text;
  final VoidCallback onPressed;
  final bool isPrimary;

  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.isPrimary = true,
  });

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  bool isHovered = false;
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTapDown: (_) => setState(() => isPressed = true),
        onTapUp: (_) {
          setState(() => isPressed = false);
          widget.onPressed();
        },
        onTapCancel: () => setState(() => isPressed = false),
        child: AnimatedContainer(
          duration: Duration(milliseconds: 200),
          curve: Curves.easeInOut,
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 14),
          decoration: BoxDecoration(
            color: _getBackgroundColor(),
            borderRadius: BorderRadius.circular(12),
            boxShadow: isPressed
                ? []
                : [
                    BoxShadow(
                      color: _getShadowColor(),
                      blurRadius: isHovered ? 12 : 6,
                      offset: Offset(0, isHovered ? 6 : 3),
                    ),
                  ],
            border: widget.isPrimary
                ? null
                : Border.all(
                    color: Colors.grey.shade400,
                    width: 2,
                  ),
          ),
          child: Center(
            child: Text(
              widget.text,
              style: TextStyle(
                color: _getTextColor(),
                fontSize: 16,
                fontWeight: FontWeight.w600,
                letterSpacing: 0.5,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Color _getBackgroundColor() {
    if (isPressed) {
      return widget.isPrimary 
        ? Colors.blue.shade800 
        : Colors.grey.shade100;
    }
    if (isHovered) {
      return widget.isPrimary 
        ? Colors.blue.shade600 
        : Colors.grey.shade50;
    }
    return widget.isPrimary ? Colors.blue : Colors.white;
  }

  Color _getShadowColor() {
    return (widget.isPrimary ? Colors.blue : Colors.grey)
        .withValues(alpha: 0.3);
  }

  Color _getTextColor() {
    return widget.isPrimary ? Colors.white : Colors.blue;
  }
}