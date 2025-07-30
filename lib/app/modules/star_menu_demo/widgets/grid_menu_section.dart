import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:star_menu/star_menu.dart';

import '../item_builder.dart';
import 'demo_section.dart';
import '../star_menu_demo_controller.dart';

class GridMenuSection extends GetView<StarMenuDemoController> {
  @override
  Widget build(BuildContext context) {
    return DemoSection(
      title: 'Grid Menu',
      description: 'Perfect for many options - app launcher style',
      child: StarMenu(
        controller: controller.gridMenuController,
        params: StarMenuParameters(
          shape: MenuShape.grid,
          gridShapeParams: GridShapeParams(
            columns: 3,
            columnsSpaceH: 15,
            columnsSpaceV: 15,
          ),
          backgroundParams: BackgroundParams(
            animatedBlur: true,
            sigmaX: 5.0,
            sigmaY: 5.0,
            animatedBackgroundColor: true,
            backgroundColor: Colors.black.withValues(alpha: 0.3),
          ),
        ),
        items: ItemBuilder.buildGridMenuItems(),
        onItemTapped: controller.onMenuItemTapped,
        child: Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Icon(Icons.apps, color: Colors.white, size: 28),
        ),
      ),
    );
  }
}
