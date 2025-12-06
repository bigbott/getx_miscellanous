import 'package:get/get.dart';

import 'liquid_glass_example_controller.dart';

class LiquidGlassExampleBinding extends Binding {
  @override
  List<Bind> dependencies() {
    return [
      Bind.put<LiquidGlassExampleController>(
        LiquidGlassExampleController(),
      )
    ];
  }
}
