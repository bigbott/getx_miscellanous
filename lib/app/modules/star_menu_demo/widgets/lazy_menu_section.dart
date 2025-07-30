
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:star_menu/star_menu.dart';

import '../item_builder.dart';
import 'demo_section.dart';
import '../star_menu_demo_controller.dart';

class LazyMenuSection extends GetView<StarMenuDemoController> {
  @override
  Widget build(BuildContext context) {
    return DemoSection(
      title: 'Lazy Loading Menu',
      description: 'Items loaded dynamically when menu opens',
      child: StarMenu(
        params: StarMenuParameters(
          shape: MenuShape.circle,
          circleShapeParams: CircleShapeParams(
            radiusX: 90,
            radiusY: 90,
          ),
        ),
        lazyItems: ItemBuilder.buildLazyMenuItems,
        onItemTapped: controller.onMenuItemTapped,
        child: Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            color: Colors.orange,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Icon(Icons.cloud_sync, color: Colors.white, size: 28),
        ),
      ),
    );
  }
}