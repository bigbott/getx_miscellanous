import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_miscellanous/app/common/ez/ez_appbar.dart';
import 'package:getx_miscellanous/app/common/ez/ez_scaffold.dart';
import 'package:getx_miscellanous/app/common/ez/theme/ez_theme_controller.dart';
import 'package:getx_miscellanous/app/presentation/check-theme/widgets/registration.dart';
import 'package:getx_miscellanous/app/routes/app_pages.dart';

import 'ezscaffold_controller.dart';

class EzscaffoldView extends GetView<EzscaffoldController> {
  const EzscaffoldView({super.key});
  @override
   Widget build(BuildContext context) {
    return EzScaffold(
      // bgImage: Get.theme.extension<Bg>()!.bgImage,
      appBar: EzAppBar(
        title: 'Registration',
        backTitle: 'Home',
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
