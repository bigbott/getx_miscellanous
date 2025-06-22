import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_miscellanous/app/modules/home/widgets/nav_button.dart';
import 'package:getx_miscellanous/app/routes/app_pages.dart';

import 'settings_ui_controller.dart';

class SettingsUiView extends GetView<SettingsUiController> {
  const SettingsUiView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SettingsUiView'),
        centerTitle: true,
      ),
      body: const Center(
        child: NavButton(route: Routes.LIST, label: 'LIST'),
      ),
    );
  }
}
