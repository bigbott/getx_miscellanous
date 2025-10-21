import 'package:get/get.dart';

import 'hourglass_loader_controller.dart';

class HourglassLoaderBinding extends Bindings {
  @override
 void dependencies() {

      Get.put<HourglassLoaderController>(
        HourglassLoaderController(),
      );
    
  }
}
