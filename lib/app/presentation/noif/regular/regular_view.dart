import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'regular_controller.dart';

class RegularView extends GetView<RegularController> {
  const RegularView({super.key});
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
              GetBuilder<RegularController>(
                builder: (controller) {
                  if (controller.isLoading) {
                    return CircularProgressIndicator();
                  } else if (controller.error != null) {
                    return Text('Error: ${controller.error}');
                  } else {
                    return Text('User: ${controller.user?.name}');
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
