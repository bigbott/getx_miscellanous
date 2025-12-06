import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_miscellanous/app/common/ez/ez_appbar.dart';
import 'package:getx_miscellanous/app/common/ez/ez_scaffold.dart';
import 'package:getx_miscellanous/app/common/ez/theme/ez_theme_chooser.dart';
import 'package:getx_miscellanous/app/common/ez/theme/ez_theme_controller.dart';

import 'theme_chooser_controller.dart';

class ThemeChooserView extends GetView<ThemeChooserController> {
  const ThemeChooserView({super.key});
  @override
  Widget build(BuildContext context) {
    
    return GetBuilder<ThemeChooserController>(
      builder: (controller) {
        return EzScaffold(
          // bgImage: Get.theme.extension<Bg>()!.bgImage,
          appBar: EzAppBar(
            title: 'Registration',
            backTitle: 'Home',
            actions: [
              IconButton(
                onPressed: controller.changeMode,
                icon: controller.brightness == Brightness.light
                    ? Icon(Icons.nightlight)
                    : Icon(Icons.sunny),
              ),
            ],
          ),
          body: Center(
            child: SizedBox(
              width: Get.width / 1.5,
              height: Get.height / 2,
              child: ThemeChooser(
                  themes: controller.themeModels,
                  onThemeSelected: (index) {
                    controller.changeTheme(controller.themeModels[index]);
                  }),
            ),
          ),
        );
      }
    );
  }
}
