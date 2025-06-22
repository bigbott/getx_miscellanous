import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_miscellanous/app/routes/app_pages.dart';
import 'package:settings_ui/settings_ui.dart';

import 'example_controller.dart';

class ExampleView extends GetView<ExampleController> {
  const ExampleView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Settings example')),
      body: SettingsList(
        platform: DevicePlatform.android,
        sections: [
          SettingsSection(
            title: Text('Settings section'),
            tiles: [
              SettingsTile.navigation(
                leading: Icon(Icons.settings),
                title: Text('Navigation settings tile'),
                onPressed: (context) {
                  Get.toNamed(Routes.ANDROID_SETTINGS);
                },
              ),
              SettingsTile.switchTile(
                initialValue: false,
                onToggle: (_) {},
                title: Text('Switch settings tile'),
              //  description: Text('Get suggested actions, replies and more'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
