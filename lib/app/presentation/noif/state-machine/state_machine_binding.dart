import 'package:get/get.dart';

import 'state_machine_controller.dart';

class StateMachineBinding extends Binding {
  @override
  List<Bind> dependencies() {
    return [
      Bind.put<StateMachineController>(
        StateMachineController(),
      )
    ];
  }
}
