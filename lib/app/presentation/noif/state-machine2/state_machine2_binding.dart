import 'package:get/get.dart';

import 'state_machine2_controller.dart';

class StateMachine2Binding extends Binding {
  @override
  List<Bind> dependencies() {
    return [
      Bind.put<StateMachine2Controller>(
        StateMachine2Controller(),
      )
    ];
  }
}
