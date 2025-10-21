import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'gesture_swipe_controller.dart';

class GestureSwipeView extends GetView<GestureSwipeController> {
  const GestureSwipeView({super.key});
  @override
 Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Swipe to Go Back (iOS-style)'),
      ),
      body: GestureDetector(
        onHorizontalDragStart: controller.handleHorizontalDragStart,
        onHorizontalDragUpdate: controller.handleHorizontalDragUpdate,
        onHorizontalDragEnd: controller.handleHorizontalDragEnd,
        child: GetBuilder<GestureSwipeController>(
          builder: (controller) {
            return Stack(
              children: [              
                AnimatedBuilder(
                  animation: controller.slideAnimation,
                  builder: (context, child) {
                    return Transform.translate(
                      offset: Offset(MediaQuery.of(context).size.width * controller.slideAnimation.value.dx, 0),
                      child: Opacity(
                        opacity: controller.opacityAnimation.value,
                        child: child,
                      ),
                    );
                  },
                  child: 
                  Container(
                    color: Colors.white,
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Swipe Example',
                            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 20),
                          Container(
                            padding: const EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              color: Colors.blue.withValues(alpha: 0.1),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              children: [
                                const Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.swipe, color: Colors.blue),
                                    SizedBox(width: 8),
                                    Text(
                                      'Swipe from the left edge',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 10),
                                Text(
                                  controller.isDragging
                                    ? 'Swipe Progress: ${controller.swipeProgress}%'
                                    : 'Try the iOS-style edge swipe to go back',
                                  style: TextStyle(
                                    color: Colors.blue.shade700,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 40),
                          const Text(
                            'This example demonstrates a swipe gesture used for\nnavigation, similar to iOS\'s edge swipe to go back.',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                
                // Edge indicator (subtle hint for the user)
                Positioned(
                  left: 0,
                  top: 0,
                  bottom: 0,
                  width: 20,
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                          Colors.blue.withValues(alpha: .1),
                          Colors.blue.withValues(alpha: 0),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            );
          }
        ),
      ),
    );
  }
}
