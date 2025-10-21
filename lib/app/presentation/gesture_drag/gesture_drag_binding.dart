import 'package:get/get.dart';

import 'gesture_drag_controller.dart';

class GestureDragBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GestureDragController>(
      () => GestureDragController(),
    );
  }
}
