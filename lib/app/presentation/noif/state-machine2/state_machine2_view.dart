import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'state_machine2_controller.dart';

class StateMachine2View extends GetView<StateMachine2Controller> {
  const StateMachine2View({super.key});
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
              GetBuilder<StateMachine2Controller>(
                builder: (controller) {
                  switch (controller.currentState) {
                    case UserState.loading:
                      return const Center(child: CircularProgressIndicator());
                    case UserState.error:
                      return Center(child: Text('Error: ${controller.errorMessage}'));
                    case UserState.success:
                      return Center(child: Text('User: ${controller.user?.name}'));
                  }
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
