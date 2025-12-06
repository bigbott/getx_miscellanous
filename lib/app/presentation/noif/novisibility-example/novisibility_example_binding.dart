import 'package:get/get.dart';

import 'novisibility_example_controller.dart';

class NovisibilityExampleBinding extends Binding {
  @override
  List<Bind> dependencies() {
    return [
      Bind.put<NovisibilityExampleController>(
        NovisibilityExampleController(),
      )
    ];
  }
}
