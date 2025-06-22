import 'package:get/get.dart';

import 'buttons_controller.dart';

class ButtonsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ButtonsController>(
      () => ButtonsController(),
    );
  }
}
