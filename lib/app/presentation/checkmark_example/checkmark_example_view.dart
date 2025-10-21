import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_miscellanous/app/common/widgets/checkmark_list_tile.dart';
import 'package:getx_miscellanous/app/presentation/checkmark_example/checkmark_example_controller.dart';
import 'package:settings_ui/settings_ui.dart';


class CheckmarkExampleView extends GetView<CheckmarkExampleController> {
  const CheckmarkExampleView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Settings example')),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: GetBuilder<CheckmarkExampleController>(
          builder: (controller) {
            return SettingsList(
              sections: [
                SettingsSection(
                  title: Text('Single select section'),
                  tiles: [
                    CheckmarkListTile(options:  controller.singleSelectOptions, onTap: controller.selectFromSingle),
                  ],
                ),           
                SettingsSection(
                  title: Text('Multi select section'),
                  tiles: [
                    CheckmarkListTile(options:  controller.multiSelectOptions, onTap: controller.selectFromMulti),
                  ],
                ),
              ],
            );
          }
        ),
      ),
    );
  }
}
