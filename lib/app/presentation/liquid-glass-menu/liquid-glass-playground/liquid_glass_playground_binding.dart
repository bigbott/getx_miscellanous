import 'package:get/get.dart';

import 'liquid_glass_playground_controller.dart';

class LiquidGlassPlaygroundBinding extends Binding {
  @override
  List<Bind> dependencies() {
    return [
      Bind.put<LiquidGlassPlaygroundController>(
        LiquidGlassPlaygroundController(),
      )
    ];
  }
}
