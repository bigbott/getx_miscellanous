import 'package:get/get.dart';

import 'pin_code_controller.dart';

class PinCodeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PinCodeController>(
      () => PinCodeController(),
    );
  }
}
