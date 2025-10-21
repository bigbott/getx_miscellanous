import 'package:get/get.dart';

import 'checkmark_example_controller.dart';

class CheckmarkExampleBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CheckmarkExampleController>(
      () => CheckmarkExampleController(),
    );
  }
}
