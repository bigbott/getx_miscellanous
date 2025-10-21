import 'package:get/get.dart';

import 'mix1_controller.dart';

class Mix1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Mix1Controller>(
      () => Mix1Controller(),
    );
  }
}
