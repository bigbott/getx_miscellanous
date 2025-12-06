import 'package:get/get.dart';

import 'noif_controller.dart';

class NoifBinding extends Binding {
  @override
  List<Bind> dependencies() {
    return [
      Bind.put<NoifController>(
        NoifController(),
      )
    ];
  }
}
