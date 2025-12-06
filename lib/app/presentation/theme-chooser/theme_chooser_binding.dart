import 'package:get/get.dart';

import 'theme_chooser_controller.dart';

class ThemeChooserBinding extends Bindings {
  @override
  void dependencies() {
      Get.put<ThemeChooserController>(
        ThemeChooserController(),
      );
    
  }
}
