import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'novisibility_example_controller.dart';

class NovisibilityExampleView extends GetView<NovisibilityExampleController> {
  const NovisibilityExampleView({super.key});
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(title: Text('User Details')),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 50,
            children: [
              GetBuilder<NovisibilityExampleController>(
                builder: (controller) {
                  return controller.widget;
                },
              ),
              ElevatedButton(
                  onPressed: () {
                    controller.loadUser('234');
                  },
                  child: Text('Load again'))
            ],
          ),
        ),
      ),
    );
  }
}
