import 'package:flutter/material.dart';
import 'package:flutter_rounded_progress_bar/flutter_rounded_progress_bar.dart';
import 'package:flutter_rounded_progress_bar/rounded_progress_bar_style.dart';

import 'package:get/get.dart';

import 'rounded_progress_bar_controller.dart';

class RoundedProgressBarView extends GetView<RoundedProgressBarController> {
  const RoundedProgressBarView({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.green.shade900,
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Center(
            child: GetBuilder<RoundedProgressBarController>(
              builder: (controller) {
                return Column(
                  spacing: 30,
                  children: [
                    RoundedProgressBar(
                        childCenter: Text(
                          '${controller.percent}%',
                          style: TextStyle(color: Colors.white, fontSize: 24),
                        ),
                        milliseconds: 5000,
                        percent: controller.percent,
                        theme: RoundedProgressBarTheme.green,
                        borderRadius: BorderRadius.circular(24)),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
