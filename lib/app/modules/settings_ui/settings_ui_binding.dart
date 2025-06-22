import 'package:get/get.dart';

import 'settings_ui_controller.dart';

class SettingsUiBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SettingsUiController>(
      () => SettingsUiController(),
    );
  }
}
