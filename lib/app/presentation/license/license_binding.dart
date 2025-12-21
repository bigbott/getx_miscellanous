import 'package:get/get.dart';

import 'license_controller.dart';

class LicenseBinding extends Binding {
  @override
  List<Bind> dependencies() {
    return [
      Bind.put<LicenseController>(
        LicenseController(),
      )
    ];
  }
}
