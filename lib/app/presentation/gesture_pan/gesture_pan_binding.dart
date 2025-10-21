import 'package:get/get.dart';

import 'gesture_pan_controller.dart';

class GesturePanBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GesturePanController>(
      () => GesturePanController(),
    );
  }
}
