import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_miscellanous/app/common/ticker/simple_ticker_provider.dart';

class GestureSwipeController extends GetxController {
  late AnimationController _animationController;

  late Animation<Offset> _slideAnimation;
  Animation<Offset> get slideAnimation => _slideAnimation;

  late Animation<double> _opacityAnimation;
  Animation<double> get opacityAnimation  => _opacityAnimation;

  double _dragDistance = 0;
  bool _isDragging = false;
  bool get isDragging => _isDragging;
  final double _dragThreshold = 100; // The distance needed to trigger a complete swipe

  int get swipeProgress => (_dragDistance / _dragThreshold * 100).toInt();



  @override
  void onInit() {
    super.onInit();
    _animationController = AnimationController(
      vsync: SimpleTickerProvider(),
      duration: const Duration(milliseconds: 250),
    );

    _slideAnimation = Tween<Offset>(
      begin: const Offset(0, 0),
      end: const Offset(1, 0),
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeOut,
    ));

    _opacityAnimation = Tween<double>(
      begin: 1.0,
      end: 0.3,
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeOut,
    ));
  }

  @override
  void onClose() {
    _animationController.dispose();
    super.onClose();
  }

  void handleHorizontalDragStart(DragStartDetails details) {
    // Only allow dragging from the left edge (like iOS)
    if (details.globalPosition.dx < 50) {
      _isDragging = true;
      _dragDistance = 0;
      update();
    }
  }

  void handleHorizontalDragUpdate(DragUpdateDetails details) {
    if (_isDragging) {
      _dragDistance += details.delta.dx;
      _dragDistance = _dragDistance.clamp(0, _dragThreshold * 1.5);
      _animationController.value = _dragDistance / _dragThreshold;
      update();
    }
  }

  void handleHorizontalDragEnd(DragEndDetails details) {
    if (_isDragging) {
      if (_dragDistance > _dragThreshold || details.velocity.pixelsPerSecond.dx > 300) {
        // Complete the swipe navigation
        _animationController.forward().then((_) {
          Get.back();
        });
      } else {
        // Cancel the swipe navigation
        _animationController.reverse();
      }
      _isDragging = false;
      update();
    }
  }
}
