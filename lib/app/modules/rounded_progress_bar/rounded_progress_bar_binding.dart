import 'package:get/get.dart';

import 'rounded_progress_bar_controller.dart';

class RoundedProgressBarBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RoundedProgressBarController>(
      () => RoundedProgressBarController(),
    );
  }
}
