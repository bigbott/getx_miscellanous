import 'package:get/get.dart';

import 'inkwell_controller.dart';

class InkwellBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<InkwellController>(
      () => InkwellController(),
    );
  }
}
