import 'package:get/get.dart';

import 'm3_shapes_controller.dart';

class M3ShapesBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<M3ShapesController>(
        M3ShapesController(),
      );
  }
}


