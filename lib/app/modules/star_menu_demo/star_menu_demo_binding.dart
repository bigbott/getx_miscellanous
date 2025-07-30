import 'package:get/get.dart';

import 'star_menu_demo_controller.dart';

class StarMenuDemoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<StarMenuDemoController>(
      () => StarMenuDemoController(),
    );
  }
}
