import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_miscellanous/app/presentation/home/widgets/nav_button.dart';
import 'package:getx_miscellanous/app/routes/app_pages.dart';

import 'noif_controller.dart';

class NoifView extends GetView<NoifController> {
  const NoifView({super.key});
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
          
              NavButton(route: Routes.REGULAR, label: 'REGULAR'),
              NavButton(route: Routes.STATE_MACHINE2, label: 'STATE MACHINE WITH SWITCH'),
              NavButton(route: Routes.STATE_MACHINE3, label: 'WITH SWITCH NO PACKAGE'),
              NavButton(route: Routes.STATE_MACHINE, label: 'STATE_MACHINE WITH BUILD'),
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
