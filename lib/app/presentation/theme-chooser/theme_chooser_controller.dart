import 'package:get/get.dart';
import 'package:getx_miscellanous/app/common/ez/theme/ez_theme_controller.dart';
import 'package:getx_miscellanous/app/common/ez/theme/ez_theme_model.dart';

class ThemeChooserController extends GetxController {
  final themeController = Get.find<EzThemeController>();

  List<ThemeModel> get themeModels => themeController.themeModels;

  get brightness => themeController.theme.brightness;

  void changeMode() {
    themeController.changeMode();
    update();
  }

  void changeTheme(ThemeModel themeModel) {
    themeController.changeTheme(themeModel);
   // update();
  }


}
