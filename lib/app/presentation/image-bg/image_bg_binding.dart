import 'package:get/get.dart';

import 'image_bg_controller.dart';

class ImageBgBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<ImageBgController>(
      ImageBgController(),
    );
  }
}
