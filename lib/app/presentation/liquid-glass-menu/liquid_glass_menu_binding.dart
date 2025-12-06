import 'package:get/get.dart';

import 'liquid_glass_menu_controller.dart';

class LiquidGlassMenuBinding extends Binding {
  @override
  List<Bind> dependencies() {
    return [
      Bind.put<LiquidGlassMenuController>(
        LiquidGlassMenuController(),
      )
    ];
  }
}
