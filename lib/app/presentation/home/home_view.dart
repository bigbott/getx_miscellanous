import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'widgets/nav_button.dart';
import 'package:getx_miscellanous/app/routes/app_pages.dart';

import 'home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 30,
              children: [
                NavButton(route: Routes.GALLERY, label: 'SETTINGS_UI'),
                NavButton(route: Routes.LIST, label: 'LIST'),
                NavButton(route: Routes.EXAMPLE, label: 'EXAMPLE'),
                NavButton(route: Routes.CHECKMARK_EXAMPLE, label: 'CHECKMARK_EXAMPLE'),
                NavButton(route: Routes.PIN_CODE, label: 'PIN_CODE'),
                NavButton(route: Routes.AUDIO, label: 'AUDIO'),
                NavButton(route: Routes.GRAMMARY, label: 'GRAMMARY'),
                NavButton(route: Routes.BUTTONS, label: 'BUTTONS'),
                NavButton(route: Routes.BUTTON_STYLE, label: 'BUTTON_STYLE'),
                NavButton(route: Routes.MY, label: 'Lifecycle'),
                NavButton(route: Routes.INKWELL, label: 'INKWELL'),
                NavButton(route: Routes.GESTURE_OFFICIAL, label: 'GESTURE_OFFICIAL'),
                NavButton(route: Routes.GESTURE_PAN, label: 'GESTURE_PAN'),
                NavButton(route: Routes.GESTURE_DRAG, label: 'GESTURE_DRAG'),
                NavButton(route: Routes.GESTURE_SWIPE, label: 'GESTURE_SWIPE'),
                NavButton(route: Routes.GESTURE_PINCH, label: 'GESTURE_PINCH'),
                NavButton(route: Routes.COLOR_EXAMPLES, label: 'COLOR_EXAMPLES'),
                NavButton(route: Routes.ASYNC_EXAMPLES, label: 'ASYNC_EXAMPLES'),
                NavButton(route: Routes.LIQUID_PROGRESS_BAR, label: 'LIQUID_PROGRESS_BAR'),
                NavButton(route: Routes.STAR_MENU_DEMO, label: 'STAR_MENU_DEMO'),
                NavButton(route: Routes.STAR_MENU_OFFICIAL, label: 'STAR_MENU_OFFICIAL'),
                NavButton(route: Routes.MIX1, label: 'MIX1'),
                NavButton(route: Routes.M3_SHAPES, label: 'M3_SHAPES'),
                NavButton(route: Routes.HOURGLASS_OFFICIAL, label: 'HOURGLASS_OFFICIAL'),
                 NavButton(route: Routes.HOURGLASS_LOADER, label: 'HOURGLASS_LOADER'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
