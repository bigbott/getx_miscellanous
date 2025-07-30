
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../item_builder.dart';
import 'package:star_menu/star_menu.dart';

import 'demo_section.dart';
import '../star_menu_demo_controller.dart';

class AnimatedMenuSection extends GetView<StarMenuDemoController> {
  @override
  Widget build(BuildContext context) {
    return DemoSection(
      title: 'Animated Menu',
      description: 'Enhanced animations with rotation and scaling',
      child: StarMenu(
        controller: controller.animatedMenuController,
        params: StarMenuParameters(
          shape: MenuShape.circle,
          circleShapeParams: CircleShapeParams(
            radiusX: 110,
            radiusY: 110,
          ),
          openDurationMs: 600,
          closeDurationMs: 200,
          rotateItemsAnimationAngle: 45,
          startItemScaleAnimation: 0.1,
          animationCurve: Curves.linear,
          backgroundParams: BackgroundParams(
            animatedBlur: true,
            sigmaX: 3.0,
            sigmaY: 3.0,
            animatedBackgroundColor: true,
            backgroundColor: Colors.black.withValues(alpha: 0.2),
          ),
        ),
        items: ItemBuilder.buildAnimatedMenuItems(),
      //  onItemTapped: controller.onMenuItemTapped,
        child: Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            color: Colors.deepPurple,
            shape: BoxShape.circle,
            gradient: LinearGradient(
              colors: [Colors.deepPurple, Colors.purple[300]!],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Icon(Icons.auto_awesome, color: Colors.white, size: 28),
        ),
      ),
    );
  }
}

 
