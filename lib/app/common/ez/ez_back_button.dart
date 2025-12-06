import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EzBackButton extends StatelessWidget {
  final String? text;
  final VoidCallback? onPressed;
  final Color? color;
  final double fontSize;
  final double chevronBottomPadding;

  EzBackButton({
    super.key,
    this.text,
    this.onPressed,
    this.color,
    this.fontSize = 14,
    this.chevronBottomPadding = 0,
  });

  @override
  Widget build(BuildContext context) {
    final theColor = color ?? Theme.of(context).colorScheme.primary;
    return TextButton(
      onPressed: onPressed ?? () => Get.back(),
      style: TextButton.styleFrom(
        alignment: Alignment.centerLeft,
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      ),
      child: text != null
          ? FittedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.ideographic,
                // spacing: 5,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: chevronBottomPadding),
                    child:
                        // Text(
                        //   '\u2039',
                        //   style: TextStyle(
                        //     color: theColor,
                        //     fontSize: fontSize * 2.5,
                        //     height: 0.5,

                        //   ),
                        // ),
                        Icon(
                      Icons.chevron_left,
                      color: theColor,
                      size: fontSize + 10,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 0),
                    child: Text(
                      text!,
                      style: TextStyle(color: theColor, fontSize: fontSize, height: 2.5),
                    ),
                  ),
                ],
              ),
            )
          : Icon(
              Icons.chevron_left,
              color: theColor,
              size: fontSize + 10,
            ),
    );
  }
}
