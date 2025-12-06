import 'package:get/get.dart';

import 'liquid_glass_showcase_controller.dart';

class LiquidGlassShowcaseBinding extends Binding {
  @override
  List<Bind> dependencies() {
    return [
      Bind.put<LiquidGlassShowcaseController>(
        LiquidGlassShowcaseController(),
      )
    ];
  }
}
