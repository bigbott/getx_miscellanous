import 'package:flutter/material.dart';
import 'hourglass_widget.dart';

/// A widget that displays an animated hourglass that flips and restarts when animation completes
class HourglassLoader extends StatefulWidget {
  /// Duration of the hourglass animation
  final Duration duration;
  
  /// Width of the hourglass
  final double width;
  
  /// Height of the hourglass
  final double height;
  
  /// Color of the top and bottom lines
  final Color topBottomColor;
  
  /// Color of the hourglass outline
  final Color glassColor;
  
  /// Color of the sand
  final Color sandColor;
  
  const HourglassLoader({
    super.key,
    this.duration = const Duration(seconds: 3),
    this.width = 100,
    this.height = 150,
    this.topBottomColor = const Color(0xFFA0A0A0),
    this.glassColor = const Color(0xFFB8E6E8),
    this.sandColor = const Color(0xFFF4A460),
  });
  
  @override
  State<HourglassLoader> createState() => _HourglassLoaderState();
}

class _HourglassLoaderState extends State<HourglassLoader> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _fillAnimation;
  late Animation<double> _rotationAnimation;
  
  @override
  void initState() {
    super.initState();
    _initAnimations();
  }
  
  void _initAnimations() {
    // Animation for sand filling
    _animationController = AnimationController(
      duration: widget.duration,
      vsync: this,
    );
    
    _fillAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(_animationController);
    
    // Animation for hourglass rotation
    _rotationAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Interval(0.8, 1.0, curve: Curves.easeInOut),
      ),
    );
    
    // Add listener to handle rotation and restart
    _animationController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        // Reset and restart the animation
        _animationController.reset();
        _animationController.forward();
      }
    });
    
    // Start the animation
    _animationController.forward();
  }
  
  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: Listenable.merge([_fillAnimation, _rotationAnimation]),
      builder: (context, child) {
        return Transform(
          alignment: Alignment.center,
          transform: Matrix4.identity()
            ..rotateZ(_rotationAnimation.value * 3.14),
          child: Hourglass(
            fillAmount: _fillAnimation.value,
            width: widget.width,
            height: widget.height,
            topBottomColor: widget.topBottomColor,
            glassColor: widget.glassColor,
            sandColor: widget.sandColor,
          ),
        );
      },
    );
  }
}