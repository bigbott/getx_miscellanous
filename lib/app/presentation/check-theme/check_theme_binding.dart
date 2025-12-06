import 'package:get/get.dart';

import 'check_theme_controller.dart';

class CheckThemeBinding extends  Bindings {
  @override
  void dependencies() {
    Get.put<CheckThemeController>(
      CheckThemeController(),
    );
  }
}
