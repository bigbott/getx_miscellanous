import 'package:get/get.dart';

import 'gesture_pinch_controller.dart';

class GesturePinchBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GesturePinchController>(
      () => GesturePinchController(),
    );
  }
}
