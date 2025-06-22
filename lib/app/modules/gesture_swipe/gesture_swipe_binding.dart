import 'package:get/get.dart';

import 'gesture_swipe_controller.dart';

class GestureSwipeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GestureSwipeController>(
      () => GestureSwipeController(),
    );
  }
}
