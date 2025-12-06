import 'package:get/get.dart';

import 'registration_controller.dart';

class RegistrationBinding extends Binding {
  @override
  List<Bind> dependencies() {
    return [
      Bind.put<RegistrationController>(
        RegistrationController(),
      )
    ];
  }
}
