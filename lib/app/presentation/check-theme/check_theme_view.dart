import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_miscellanous/app/common/ez/ez_appbar.dart';
import 'package:getx_miscellanous/app/common/ez/ez_scaffold.dart';
import 'package:getx_miscellanous/app/common/ez/theme/ez_bg_exension.dart';
import 'package:getx_miscellanous/app/common/ez/theme/ez_schemes.dart';
import 'package:getx_miscellanous/app/common/ez/theme/ez_theme.dart';
import 'package:getx_miscellanous/app/common/ez/theme/ez_theme_controller.dart';
import 'package:getx_miscellanous/app/presentation/check-theme/widgets/registration.dart';
import 'package:getx_miscellanous/app/presentation/home/widgets/nav_button.dart';
import 'package:getx_miscellanous/app/presentation/typography-comparison/typography_comparison_view.dart';
import 'package:getx_miscellanous/app/routes/app_pages.dart';

import 'check_theme_controller.dart';

class CheckThemeView extends GetView<CheckThemeController> {
  CheckThemeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(18.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 30,
            children: [
              NavButton(route: Routes.SCAFFOLD, label: 'SCAFFOLD'),
              NavButton(route: Routes.EZSCAFFOLD, label: 'EZSCAFFOLD'),
                         ],
          ),
        ),
      ),
    );
  }
}
