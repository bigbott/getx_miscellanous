import 'package:get/get.dart';

import 'typography_comparison_controller.dart';

class TypographyComparisonBinding extends Bindings {
  @override
  void dependencies() {
     
      Get.put<TypographyComparisonController>(
        TypographyComparisonController(),
      )
    ;
  }
}
