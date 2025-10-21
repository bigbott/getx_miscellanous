import 'package:get/get.dart';
import 'package:star_menu/star_menu.dart';

class StarMenuDemoController extends GetxController {
  // Controllers for different star menus
  final StarMenuController circleMenuController = StarMenuController();
  final StarMenuController linearMenuController = StarMenuController();
  final StarMenuController gridMenuController = StarMenuController();
  final StarMenuController animatedMenuController = StarMenuController();
  final StarMenuController programmaticMenuController = StarMenuController();
  
  void onMenuItemTapped(int index, StarMenuController controller) {
    controller.closeMenu!();
    Get.snackbar('Action', 'Item $index tapped');
  }
  
  void openProgrammaticMenu() {
    programmaticMenuController.openMenu!();
  }
  
}