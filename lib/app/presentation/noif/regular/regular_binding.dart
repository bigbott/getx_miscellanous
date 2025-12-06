import 'package:get/get.dart';

import 'regular_controller.dart';

class RegularBinding extends Binding {
  @override
  List<Bind> dependencies() {
    return [
      Bind.put<RegularController>(
        RegularController(),
      )
    ];
  }
}
