import 'package:get/get.dart';

import 'grammary_controller.dart';

class GrammaryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GrammaryController>(
      () => GrammaryController(),
    );
  }
}
