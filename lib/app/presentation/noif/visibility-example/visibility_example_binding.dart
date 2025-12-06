import 'package:get/get.dart';

import 'visibility_example_controller.dart';

class VisibilityExampleBinding extends Binding {
  @override
  List<Bind> dependencies() {
    return [
      Bind.put<VisibilityExampleController>(
        VisibilityExampleController(),
      )
    ];
  }
}
