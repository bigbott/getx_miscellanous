import 'package:get/get.dart';

import 'state_map_controller.dart';

class StateMapBinding extends Binding {
  @override
  List<Bind> dependencies() {
    return [
      Bind.put<StateMapController>(
        StateMapController(),
      )
    ];
  }
}
