import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'demo_section.dart';
import '../star_menu_demo_controller.dart';

class PopupMenuSection extends GetView<StarMenuDemoController> {
  @override
  Widget build(BuildContext context) {
    return DemoSection(
      title: 'Built-in PopupMenuButton',
      description: 'Flutter\'s default popup menu - functional but boring',
      child: PopupMenuButton<String>(
        onSelected: (value) => Get.snackbar('Selected', value),
        itemBuilder: (context) => [
          PopupMenuItem(
            value: 'Home',
            child: Text('Home'),
          ),
          PopupMenuItem(
            value: 'Search',
            child: Text('Search'),
          ),
          PopupMenuItem(
            value: 'Settings',
            child: Text(
              'Settings', style: TextStyle(color: Colors.white),
            ),
          ),
        ],
        // offset: Offset(0, 60),
        //surfaceTintColor: Colors.red,

        color: Colors.blue,
        position: PopupMenuPosition.over,
        child: Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            color: Colors.green[600],
            borderRadius: BorderRadius.circular(30),
          ),
          child: Icon(Icons.more_vert, color: Colors.white),
        ),
      ),
    );
  }
}
