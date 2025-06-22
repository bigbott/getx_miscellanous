import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_miscellanous/app/common/liquid_progress_indicator/liquid_indicator.dart';

import 'liquid_progress_bar_controller.dart';

class LiquidProgressBarView extends GetView<LiquidProgressBarController> {
  const LiquidProgressBarView({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Colors.green.shade900,
          child: Padding(
            padding: const EdgeInsets.all(0),
            child: Center(
               child: LiquidProgressIndicator(),
              // child: LiquidProgressIndicator(
              //   width: 140,
              //   height: 400,
              //   isHorizontal: false,
              // ),
              // child: LiquidProgressIndicator(
              //   width: Get.width,
              //   height: Get.height,
              //   isHorizontal: false,
              //   bgColor: Colors.pink.shade200,
              //   liquidColor: Colors.green.shade900,
              //   title: 'Loading...',
              // ),
            ),
          ),
        ),
      ),
    );
  }
}
