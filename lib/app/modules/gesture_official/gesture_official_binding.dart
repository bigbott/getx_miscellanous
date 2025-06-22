import 'package:get/get.dart';

import 'gesture_official_controller.dart';

class GestureOfficialBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GestureOfficialController>(
      () => GestureOfficialController(),
    );
  }
}
