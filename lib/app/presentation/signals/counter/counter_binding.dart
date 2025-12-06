import 'package:get/get.dart';

import 'counter_controller.dart';

class CounterBinding extends Binding {
  @override
  List<Bind> dependencies() {
    return [
      Bind.put<CounterController>(
        CounterController(),
      )
    ];
  }
}
