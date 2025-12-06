import 'package:get/get.dart';

import 'state_machine3_controller.dart';

class StateMachine3Binding extends Binding {
  @override
  List<Bind> dependencies() {
    return [
      Bind.put<StateMachine3Controller>(
        StateMachine3Controller(),
      )
    ];
  }
}
