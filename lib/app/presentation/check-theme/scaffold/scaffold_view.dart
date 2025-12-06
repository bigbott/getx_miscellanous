import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_miscellanous/app/common/ez/theme/ez_theme_controller.dart';
import 'package:getx_miscellanous/app/routes/app_pages.dart';

import 'widgets/registration.dart';
import 'scaffold_controller.dart';

class ScaffoldView extends GetView<ScaffoldController> {
  const ScaffoldView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       // bgImage: Get.theme.extension<Bg>()!.bgImage,
      appBar: AppBar(

        actions: [
          IconButton(
            onPressed: Get.find<EzThemeController>().changeMode,
            icon: Get.find<EzThemeController>().mode == ThemeMode.light
                ? Icon(Icons.nightlight)
                : Icon(Icons.sunny),
          ),
          IconButton(
            onPressed: () {
              Get.toNamed(Routes.THEME_CHOOSER);
            },
            icon: Icon(Icons.menu),
          ),
        ],
      ),
      body: RegistrationPage(),
    );
  }
}
