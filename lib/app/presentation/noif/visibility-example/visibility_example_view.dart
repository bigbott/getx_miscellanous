import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'visibility_example_controller.dart';

class VisibilityExampleView extends GetView<VisibilityExampleController> {
  const VisibilityExampleView({super.key});
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
              GetBuilder<VisibilityExampleController>(
                builder: (controller) {
                  return Stack(
                    children: [
                      Visibility(
                        visible: controller.isLoading,
                        child: Center(
                          child: CircularProgressIndicator(),
                        ),
                      ),
                            
                      // Success state
                      Visibility(
                        visible: controller.hasData,
                        child: Text(
                          controller.username,
                          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                      ),
                            
                      // Error state
                      Visibility(
                        visible: controller.hasError,
                        child: Text(
                          controller.errorMessage,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Get.theme.colorScheme.error,
                          ),
                        ),
                      ),
                    ],
                  );
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
