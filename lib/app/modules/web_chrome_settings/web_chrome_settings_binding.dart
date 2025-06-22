import 'package:get/get.dart';

import 'web_chrome_settings_controller.dart';

class WebChromeSettingsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<WebChromeSettingsController>(
      () => WebChromeSettingsController(),
    );
  }
}
