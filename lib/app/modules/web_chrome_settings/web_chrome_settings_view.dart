import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'web_chrome_settings_controller.dart';

class WebChromeSettingsView extends GetView<WebChromeSettingsController> {
  const WebChromeSettingsView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WebChromeSettingsView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'WebChromeSettingsView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
