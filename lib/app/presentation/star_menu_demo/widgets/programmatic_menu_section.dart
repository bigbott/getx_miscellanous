

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:star_menu/star_menu.dart';

import '../item_builder.dart';
import 'demo_section.dart';
import '../star_menu_demo_controller.dart';


class ProgrammaticMenuSection extends GetView<StarMenuDemoController> {
  @override
  Widget build(BuildContext context) {
    return DemoSection(
      title: 'Programmatic Control',
      description: 'Open menu from button without touching trigger',
      child: Column(
        children: [
          StarMenu(
            controller: controller.programmaticMenuController,
            params: StarMenuParameters(
              shape: MenuShape.circle,
              circleShapeParams: CircleShapeParams(
                radiusX: 80,
                radiusY: 80,
              ),
            ),
            items: ItemBuilder.buildCircularMenuItems().take(3).toList(),
            onItemTapped: controller.onMenuItemTapped,
            child: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.green,
                shape: BoxShape.circle,
              ),
              child: Icon(Icons.touch_app, color: Colors.white, size: 24),
            ),
          ),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: controller.openProgrammaticMenu,
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
              foregroundColor: Colors.white,
            ),
            child: Text('Open Menu'),
          ),
        ],
      ),
    );
  }
}