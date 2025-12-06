import 'package:flutter/material.dart';
import 'package:get/get.dart';

class IosBackButton extends StatelessWidget {
  final String? text;
  final VoidCallback? onPressed;
  final Color? color;
  final double iconSize;
  final double fontSize;

  const IosBackButton({
    super.key,
    this.text = 'Back',
    this.onPressed,
    this.color,
    this.iconSize = 32,
    this.fontSize = 16,
  });

  @override
  Widget build(BuildContext context) {
    final effectiveColor = color ?? Theme.of(context).colorScheme.primary;

    return 
    Center(
      child: SizedBox(
        height: 40,
        child: GestureDetector(
          behavior: HitTestBehavior.translucent,
          onTap: onPressed,
          child: AnimatedOpacity(
            duration: const Duration(milliseconds: 100),
            opacity: 1,
            child: MouseRegion(
              cursor: SystemMouseCursors.click,
              child: InkWell(
                onTap: onPressed ?? () => Get.back(),
                borderRadius: BorderRadius.circular(16),
                splashColor: Colors.transparent,
                highlightColor: effectiveColor.withValues(alpha: 0.08), // iOS-like press glow
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 1),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.chevron_left,
                        size: iconSize,
                        color: effectiveColor,
                      ),
                      //const SizedBox(width: 2),
                      Transform.translate(
                        offset:  Offset(-fontSize/3, 0), // 10px left
                        child: Text(
                          text!,
                          style: TextStyle(
                            color: effectiveColor,
                            fontSize: fontSize,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
