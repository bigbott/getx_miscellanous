import 'package:flutter/material.dart';

final class Styles {
  Styles._();

  static const align = ButtonStyle(
    alignment: Alignment.centerLeft,
    minimumSize: WidgetStateProperty.fromMap(
      {WidgetState.hovered: Size(double.infinity, 60)},
    ),
    animationDuration: Duration(seconds: 1),
  );

  static var bgBuilder = ButtonStyle(
      minimumSize: WidgetStatePropertyAll(Size(300, 60)),
      backgroundBuilder: (context, states, child) {
        return Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(states.contains(WidgetState.hovered)
                  ? 'https://publicdomainvectors.org/photos/Flat-Shaded-Landscape.png'
                  : 'https://publicdomainvectors.org/photos/Easter_Landscape_001.png'),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          child: child,
        );
      });

  static var bgColor = ButtonStyle(
    backgroundColor: WidgetStateColor.fromMap(
      {
        WidgetState.pressed: Colors.red.shade900,
        WidgetState.any: Colors.blue.shade900,
      },
    ),
  );

  static var elevation = ButtonStyle(
    elevation: WidgetStateProperty<double>.fromMap(
      {
        WidgetState.pressed: 0,
        WidgetState.any: 10,
      },
    ),
  );

  static var animDuration = ButtonStyle(
    animationDuration: Duration(seconds: 1),
    elevation: WidgetStateProperty<double>.fromMap(
      {
        WidgetState.pressed: 0,
        WidgetState.any: 10,
      },
    ),
  );

  static var fixedSize = ButtonStyle(
    fixedSize: WidgetStatePropertyAll(Size(300, 90)),
  );

  static var fgColor = ButtonStyle(
    foregroundColor: WidgetStatePropertyAll(Colors.black),
  );

  static var icon = ButtonStyle(
    iconSize: WidgetStatePropertyAll(50),
    iconColor: WidgetStatePropertyAll(Colors.red),
    //iconAlignment:  WidgetStatePropertyAll(Alignment.end),
  );

  static var overlay = ButtonStyle(overlayColor: WidgetStateColor.resolveWith((states) {
    if (states.contains(WidgetState.hovered)) {
      return Colors.red;
    } else if (states.contains(WidgetState.any)) {
      return Colors.green;
    }
    return Colors.blue;
  }));

  static var padding = ButtonStyle(
    padding: WidgetStateProperty<EdgeInsetsGeometry?>.fromMap(
      {
        WidgetState.hovered: EdgeInsets.all(20),
        WidgetState.any: EdgeInsets.all(10),
      },
    ),
  );

  static var density = ButtonStyle(
    padding: WidgetStatePropertyAll(EdgeInsets.all(20)),
    //visualDensity: VisualDensity.compact,
    visualDensity: VisualDensity(horizontal: 4, vertical: 4),
  );

  static var shadow = ButtonStyle(
      shadowColor: WidgetStatePropertyAll(Colors.red),
      elevation: WidgetStatePropertyAll<double>(20));

  static var shapeAndSide = ButtonStyle(
    // padding:WidgetStatePropertyAll(EdgeInsets.all(20)),
    visualDensity: VisualDensity(horizontal: 4, vertical: 4),
    shape: WidgetStateProperty<OutlinedBorder?>.fromMap(
      {
        WidgetState.hovered: StarBorder.polygon(sides: 5, squash: 1),
      },
    ),
    side: WidgetStateProperty<BorderSide?>.fromMap(
      {
        WidgetState.hovered: BorderSide(width: 5.0, color: Colors.red),
      },
    ),
  );

  static var shapeAndSideStatic = ButtonStyle(
    visualDensity: VisualDensity(horizontal: 4, vertical: 4),
    shape: WidgetStatePropertyAll(StadiumBorder()),
    side: WidgetStatePropertyAll(BorderSide(
      width: 5.0,
      color: Colors.red,
    )),
  );

  static var splash = ButtonStyle(
    splashFactory: NoSplash.splashFactory,
  );

  static var surfaceTint = ButtonStyle(
      surfaceTintColor: WidgetStatePropertyAll(Colors.red),
      elevation: WidgetStatePropertyAll<double>(20));

  static var star = ButtonStyle(
    shape: WidgetStateProperty<OutlinedBorder?>.fromMap(
      {
        WidgetState.pressed: StarBorder(points: 5, squash: 1),
      },
    ),
    side: WidgetStateProperty<BorderSide?>.fromMap(
      {
        WidgetState.pressed: BorderSide(width: 1.0, color: Colors.red),
      },
    ),
    foregroundColor: WidgetStateProperty<Color?>.fromMap(
      {
        WidgetState.pressed: Colors.white,
      },
    ),
    animationDuration: Duration(milliseconds: 500)
  );
}
