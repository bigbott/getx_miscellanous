import 'package:get/get.dart';

import 'color_examples_controller.dart';

class ColorExamplesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ColorExamplesController>(
      () => ColorExamplesController(),
    );
  }
}
