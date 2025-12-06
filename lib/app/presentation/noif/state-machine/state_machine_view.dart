import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'state_machine_controller.dart';

class StateMachineView extends GetView<StateMachineController> {
  const StateMachineView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RegularView'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 50,
            children: [
              GetBuilder<StateMachineController>(
                builder: (controller) {
                  return controller.currentState.buildView();
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
