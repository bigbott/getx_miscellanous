import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:star_menu/star_menu.dart';

import '../item_builder.dart';
import 'demo_section.dart';
import '../star_menu_demo_controller.dart';

class LinearMenuSection extends GetView<StarMenuDemoController> {
  @override
  Widget build(BuildContext context) {
    return DemoSection(
      title: 'Linear Menu',
      description: 'Items arranged in straight line - great for toolbars',
      child: StarMenu(
        controller: controller.linearMenuController,
        params: StarMenuParameters(
          shape: MenuShape.linear,
          linearShapeParams: LinearShapeParams(
            angle: 90,
            space: 15,
            alignment: LinearAlignment.center,
            
          ),
          centerOffset: Offset(-0,100)
        ),
        items: ItemBuilder.buildLinearMenuItems(),
        onItemTapped: controller.onMenuItemTapped,
        child: Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Icon(Icons.menu, color: Colors.white, size: 28),
        ),
      ),
    );
  }
}