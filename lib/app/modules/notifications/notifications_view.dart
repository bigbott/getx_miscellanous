import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:settings_ui/settings_ui.dart';

import 'notifications_controller.dart';

class NotificationsView extends GetView<NotificationsController> {
  const NotificationsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifications'),
      ),
      body: SettingsList(
        platform: DevicePlatform.iOS,
        applicationType: ApplicationType.cupertino,
        sections: [
          SettingsSection(
            title: Text('Manage'),
            tiles: [
              SettingsTile(
                title: Text('App settings'),
                description: Text('Control notifications from individual apps'),
              ),
              SettingsTile(
                title: Text('Notification history'),
                description: Text('Show recent and snoozed notifications'),
              ),
            ],
          ),
          SettingsSection(
            title: Text('Conservation'),
            tiles: [
              SettingsTile(
                title: Text('Conservations'),
                description: Text('No priority conservations'),
              ),
              SettingsTile(
                title: Text('Bubbles'),
                description: Text(
                  'On / Conservations can appear as floating icons',
                ),
              ),
            ],
          ),
          SettingsSection(
            title: Text('Privacy'),
            tiles: [
              SettingsTile(
                title: Text('Device & app notifications'),
                description: Text(
                  'Control which apps and devices can read notifications',
                ),
              ),
              SettingsTile(
                title: Text('Notifications on lock screen'),
                description: Text('Show conversations, default, and silent'),
              ),
            ],
          ),
          SettingsSection(
            title: Text('General'),
            tiles: [
              SettingsTile(
                title: Text('Do Not Disturb'),
                description: Text('Off / 1 schedule can turn on automatically'),
              ),
              SettingsTile(
                title: Text('Wireless emergency alerts'),
              ),
              SettingsTile.switchTile(
                initialValue: false,
                onToggle: (_) {},
                title: Text('Hide silent notifications in status bar'),
              ),
              SettingsTile.switchTile(
                initialValue: false,
                onToggle: (_) {},
                title: Text('Allow notification snoozing'),
              ),
             
              SettingsTile.switchTile(
                initialValue: false,
                onToggle: (_) {},
                title: Text('Enable notifications'),
                description: Text('Get suggested actions, replies and more'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}