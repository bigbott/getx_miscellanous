import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'gesture_drag_controller.dart';

class GestureDragView extends GetView<GestureDragController> {
  const GestureDragView({super.key});
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('Drag Example'),
      ),
      body: Column(
        children: [
          // Custom horizontal slider using horizontal drag gesture
          Expanded(
            child: Center(
              child: GetBuilder<GestureDragController>(
                id: 'horizontal',
                builder: (controller) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Horizontal Drag'),
                      const SizedBox(height: 20),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 20),
                        height: 50,
                        width: screenWidth - 40,
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Stack(
                          children: [
                            // Track fill
                            Container(
                              width: (screenWidth - 40) * controller.horizontalValue,
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(25),
                              ),
                            ),
                            // Thumb
                            Positioned(
                              left: (screenWidth - 40) * controller.horizontalValue - 25,
                              child: GestureDetector(
                                onHorizontalDragUpdate: (details) {
                                  double value = controller.horizontalValue + details.delta.dx / (screenWidth - 40);
                                  controller.horizontalValue = value.clamp(0.0, 1.0);
                                },
                                child: Container(
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withValues(alpha: 0.2),
                                        blurRadius: 5,
                                        spreadRadius: 1,
                                      ),
                                    ],
                                  ),
                                  child: const Center(
                                    child: Icon(Icons.drag_indicator, color: Colors.blue),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text('Value: ${(controller.horizontalValue * 100).toStringAsFixed(1)}%'),
                    ],
                  );
                }
              ),
            ),
          ),

          // Custom vertical slider using vertical drag gesture
          Expanded(
            child: Center(
              child: GetBuilder<GestureDragController>(
                id: 'vertical',
                builder: (cotroller) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Vertical\nDrag', textAlign: TextAlign.center),
                      const SizedBox(width: 20),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 40),
                        width: 50,
                        height: screenHeight * 0.3,
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Stack(
                          children: [
                            // Track fill (bottom to top)
                            Positioned(
                              bottom: 0,
                              child: Container(
                                width: 50,
                                height: screenHeight * 0.3 * controller.verticalValue,
                                decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(25),
                                ),
                              ),
                            ),
                            // Thumb
                            Positioned(
                              bottom: screenHeight * 0.3 * controller.verticalValue - 25,
                              left: 0,
                              child: GestureDetector(
                                onVerticalDragUpdate: (details) {
                                  double value = controller.verticalValue - details.delta.dy / (screenHeight * 0.3);
                                  controller.verticalValue = value.clamp(0.0, 1.0);
                                },
                                child: Container(
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withValues(alpha: 0.2),
                                        blurRadius: 5,
                                        spreadRadius: 1,
                                      ),
                                    ],
                                  ),
                                  child: const Center(
                                    child: Icon(Icons.drag_indicator, color: Colors.green),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 10),
                      Text('Value: ${(controller.verticalValue * 100).toStringAsFixed(1)}%'),
                    ],
                  );
                }
              ),
            ),
          ),
        ],
      ),
    );
  }
}