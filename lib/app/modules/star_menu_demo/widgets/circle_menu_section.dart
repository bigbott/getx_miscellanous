import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:star_menu/star_menu.dart';

import '../item_builder.dart';
import 'demo_section.dart';
import '../star_menu_demo_controller.dart';

class CircleMenuSection extends GetView<StarMenuDemoController> {
  @override
  Widget build(BuildContext context) {
    return DemoSection(
      title: 'Basic Circle Menu',
      description: 'Simple circular star menu with smooth animations',
      child: StarMenu(
        controller: controller.circleMenuController,
        params: const StarMenuParameters(
          backgroundParams: BackgroundParams(
            animatedBlur: true,
            sigmaX: 4,
            sigmaY: 4,
            backgroundColor: Colors.transparent,
          ),
          circleShapeParams: CircleShapeParams(radiusY: 100),
          openDurationMs: 1000,
          rotateItemsAnimationAngle: 360,
        ),
        items: ItemBuilder.buildCircularMenuItems(),
        onItemTapped: controller.onMenuItemTapped,
        child: Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            color: Colors.pink,
            shape: BoxShape.circle,
          ),
          child: Icon(Icons.add, color: Colors.white, size: 28),
        ),
      ),
    );
  }
}
