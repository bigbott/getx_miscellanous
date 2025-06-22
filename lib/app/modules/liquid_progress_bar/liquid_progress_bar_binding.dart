import 'package:get/get.dart';

import 'liquid_progress_bar_controller.dart';

class LiquidProgressBarBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LiquidProgressBarController>(
      () => LiquidProgressBarController(),
    );
  }
}
