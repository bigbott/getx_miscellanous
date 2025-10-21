import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'widgets/popup_menu_section.dart';

import 'star_menu_demo_controller.dart';
import 'widgets/animated_menu_section.dart';
import 'widgets/circle_menu_section.dart';
import 'widgets/grid_menu_section.dart';
import 'widgets/lazy_menu_section.dart';
import 'widgets/linear_menu_section.dart';
import 'widgets/programmatic_menu_section.dart';

class StarMenuDemoView extends GetView<StarMenuDemoController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Star Menu Demo'),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
        elevation: 0,
      ),
      body: MediaQuery(
        data: MediaQuery.of(context).copyWith(size: Size(Get.width, Get.height)),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.deepPurple.withValues(alpha: 0.1),
                Colors.white,
              ],
            ),
          ),
          child: ListView(
            padding: EdgeInsets.all(16),
            children: [
              PopupMenuSection(),
              CircleMenuSection(),
              LinearMenuSection(),
              GridMenuSection(),
              AnimatedMenuSection(),
              LazyMenuSection(),
            ],
          ),
        ),
      ),
    );
  }
}