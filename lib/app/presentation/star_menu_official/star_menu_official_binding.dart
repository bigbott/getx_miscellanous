import 'package:get/get.dart';

import 'star_menu_official_controller.dart';

class StarMenuOfficialBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<StarMenuOfficialController>(
      () => StarMenuOfficialController(),
    );
  }
}
