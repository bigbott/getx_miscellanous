import 'package:get/get.dart';

import 'android_settings_controller.dart';

class AndroidSettingsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AndroidSettingsController>(
      () => AndroidSettingsController(),
    );
  }
}
