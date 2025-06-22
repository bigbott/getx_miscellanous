import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'welcome_controller.dart';

class WelcomeView extends GetView<WelcomeController> {
  const WelcomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WelcomeView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'Welcome',
          style: TextStyle(
              fontSize: 40,
              color: Colors.purple,
              fontWeight: FontWeight.w900,
              shadows: [
                Shadow(
                  color: Colors.grey,
                  offset: Offset(20, 20),
                  blurRadius: 10,
                )
              ]),
        ),
      ),
    );
  }
}
