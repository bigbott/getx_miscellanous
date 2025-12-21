import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:package_info_plus/package_info_plus.dart';

import 'license_controller.dart';

class LicenseView extends GetView<LicenseController> {
  const LicenseView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Center(
            child: OutlinedButton(
              onPressed: () async {
                final info = await PackageInfo.fromPlatform();
                showAboutDialog(
                  context: context,
                  applicationName: info.appName,
                  applicationVersion: '${info.version} ',
                  applicationIcon: const FlutterLogo(size: 48),
                  applicationLegalese: '© ${DateTime.now().year} Yuri',
                );
              },
              child: Text(
                'About',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
