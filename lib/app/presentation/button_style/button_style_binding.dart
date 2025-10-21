import 'package:get/get.dart';

import 'button_style_controller.dart';

class ButtonStyleBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ButtonStyleController>(
      () => ButtonStyleController(),
    );
  }
}
