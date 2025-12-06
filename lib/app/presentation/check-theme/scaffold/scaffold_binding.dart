import 'package:get/get.dart';

import 'scaffold_controller.dart';

class ScaffoldBinding extends Binding {
  @override
  List<Bind> dependencies() {
    return [
      Bind.put<ScaffoldController>(
        ScaffoldController(),
      )
    ];
  }
}
