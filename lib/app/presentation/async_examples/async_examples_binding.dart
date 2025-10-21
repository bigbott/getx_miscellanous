import 'package:get/get.dart';

import 'async_examples_controller.dart';

class AsyncExamplesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AsyncExamplesController>(
      () => AsyncExamplesController(),
    );
  }
}
