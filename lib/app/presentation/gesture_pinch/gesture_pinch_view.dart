import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'gesture_pinch_controller.dart';

class GesturePinchView extends GetView<GesturePinchController> {
  const GesturePinchView({super.key});
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        title: const Text('Pinch to Scale Text'),
      ),
      body: Center(
        child: GestureDetector(
          onScaleStart: (details) { },
          onScaleUpdate: (details) {
              controller.scaleFactor = details.scale.clamp(0.5, 3.0);           
          },
          child: GetBuilder<GesturePinchController>(
            builder: (controller) {
              return Transform.scale(
                scale: controller.scaleFactor,
                child: const Text(
                  'Pinch me to scale!',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              );
            }
          ),
        ),
      ),
    );
  }
}