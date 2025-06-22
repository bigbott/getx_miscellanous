import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_miscellanous/app/routes/app_pages.dart';
import 'package:settings_ui/settings_ui.dart';

import 'gallery_controller.dart';

class GalleryView extends GetView<GalleryController> {
  const GalleryView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Gallery')),
      body: SettingsList(
        sections: [
         
          SettingsSection(
            title: Text('Replications'),
            tiles: [
              SettingsTile.navigation(
                leading: Icon(CupertinoIcons.settings),
                title: Text('iOS Developer Screen'),
                onPressed: (context) {
                  Get.toNamed(Routes.IOS_DEVELOPER);
                },
              ),
              SettingsTile.navigation(
                leading: Icon(Icons.settings),
                title: Text('Android Settings Screen'),
                onPressed: (context) {
                  Get.toNamed(Routes.ANDROID_SETTINGS);
                },
              ),
              SettingsTile.navigation(
                leading: Icon(Icons.web),
                title: Text('Web Settings'),
                onPressed: (context) {
                  Get.toNamed(Routes.IOS_DEVELOPER);
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}