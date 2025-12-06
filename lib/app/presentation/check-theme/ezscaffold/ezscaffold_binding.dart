import 'package:get/get.dart';

import 'ezscaffold_controller.dart';

class EzscaffoldBinding extends Binding {
  @override
  List<Bind> dependencies() {
    return [
      Bind.put<EzscaffoldController>(
        EzscaffoldController(),
      )
    ];
  }
}
