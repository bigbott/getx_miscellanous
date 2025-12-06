import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_miscellanous/app/presentation/home/widgets/nav_button.dart';
import 'package:getx_miscellanous/app/routes/app_pages.dart';

import 'signals_controller.dart';

class SignalsView extends GetView<SignalsController> {
  const SignalsView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SignalsView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Column(
          spacing: 30,
          children: [
             SizedBox(height: 100,),
             NavButton(route: Routes.COUNTER, label: 'COUNTER'),
             NavButton(route: Routes.USER, label: 'USER'),

          ],
        ),
      ),
    );
  }
}
