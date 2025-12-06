import 'package:get/get.dart';

import 'signals_controller.dart';

class SignalsBinding extends Binding {
  @override
  List<Bind> dependencies() {
    return [
      Bind.put<SignalsController>(
        SignalsController(),
      )
    ];
  }
}
