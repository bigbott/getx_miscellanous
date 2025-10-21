import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_miscellanous/app/common/hourglass/hourglass_widget.dart';


class AnimatedHourglass extends StatefulWidget {
  @override
  _AnimatedHourglassState createState() => _AnimatedHourglassState();
}

class _AnimatedHourglassState extends State<AnimatedHourglass>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(seconds: 3),
      vsync: this,
    );
    _animation = Tween<double>(begin: 0.0, end: 1.0).animate(_controller);
    //_controller.repeat(reverse: false);
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Center(
        //   child: AnimatedBuilder(
        //     animation: _animation,
        //     builder: (context, child) {
        //       return Hourglass(
        //         fillAmount: _animation.value,
        //         width: 100,
        //         height: 150,
        //         colors: [Color(0xFFF4A460), Color(0xFFF4A460)],
        //         colorStops: [0.0, 1.0],
        //       );
        //     },
        //   ),
         ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}