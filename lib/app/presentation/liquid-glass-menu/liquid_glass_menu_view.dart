import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_miscellanous/app/presentation/home/widgets/nav_button.dart';
import 'package:getx_miscellanous/app/routes/app_pages.dart';

import 'liquid_glass_menu_controller.dart';

class LiquidGlassMenuView extends GetView<LiquidGlassMenuController> {
  const LiquidGlassMenuView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Remove IFs'),
        centerTitle: true,
      ),
       body: SingleChildScrollView(
        padding: const EdgeInsets.all(18.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 30,
            children: [
          
              NavButton(route: Routes.LIQUID_GLASS_EXAMPLE, label: 'OFFICIAL EXAMPLE'),
              NavButton(route: Routes.LIQUID_GLASS_SHOWCASE, label: 'LIQUID_GLASS_SHOWCASE'),
              NavButton(route: Routes.LIQUID_GLASS_PLAYGROUND, label: 'LIQUID_GLASS_PLAYGROUND'),
              NavButton(route: Routes.REGISTRATION, label: 'REGISTRATION'),
              NavButton(route: Routes.VISIBILITY_EXAMPLE, label: 'VISIBILITY_EXAMPLE'),
              NavButton(route: Routes.NOVISIBILITY_EXAMPLE, label: 'VM_CONSTRUCTION'),
              NavButton(route: Routes.STATE_MAP, label: 'STATE_MAP'),
            ],
          ),
        ),
      ),
    );
  }
}
