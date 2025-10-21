import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'gesture_pan_controller.dart';

class GesturePanView extends GetView<GesturePanController> {
  const GesturePanView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pan Example'),
      ),
      body: GetBuilder<GesturePanController>(
        builder: (controller) {
          return Stack(
            children: [
              Positioned(
                left: controller.position.dx,
                top: controller.position.dy,
                child: GestureDetector(
                  onPanStart: (details) {
                    // Optional: You can use this callback to prepare for dragging
                    debugPrint('Pan started at ${details.globalPosition}');
                  },
                  onPanUpdate: (details) {
                    // Update the position of the object as the user drags
                    controller.changePosition(details.delta.dx, details.delta.dy);
                  },
                  onPanEnd: (details) {
                    // Optional: Handle the end of the dragging gesture
                    debugPrint('Pan ended with velocity: ${details.velocity}');
                  },
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withValues(alpha: 0.2),
                          blurRadius: 5,
                          spreadRadius: 1,
                        ),
                      ],
                    ),
                    child: const Center(
                      child: Text(
                        'Drag me\nanywhere!',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 20,
                left: 0,
                right: 0,
                child: Center(
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.black.withValues(alpha: 0.7),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      'Position: x: ${controller.position.dx.toStringAsFixed(1)}, y: ${controller.position.dy.toStringAsFixed(1)}',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          );
        }
      ),
    );
  }
}
