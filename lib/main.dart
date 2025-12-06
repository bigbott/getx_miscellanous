import 'package:flex_seed_scheme/flex_seed_scheme.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_miscellanous/app/common/extensions/device_previewing.dart';
import 'package:getx_miscellanous/app/common/ez/theme/ez_color_scheme_extension.dart';
import 'package:getx_miscellanous/app/common/ez/theme/ez_schemes.dart';
import 'package:getx_miscellanous/app/common/ez/theme/ez_theme_controller.dart';

import 'app/common/ez/theme/ez_theme.dart';
import 'app/routes/app_pages.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Get.put(EzThemeController(), permanent: true);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<EzThemeController>();
    controller.loadBgImages(context);
    final colorScheme =  ColorScheme.fromSeed(
            seedColor: Colors.deepPurple,
            surface:  Color(0xffEDDCE4), // Color(0xFFD294D4),
          );
    // final colorScheme = SeedColorScheme.fromSeeds(primaryKey: 
    //  Colors.purple,
    //   secondaryKey:  Colors.amber,
    //   tertiaryKey:  Colors.greenAccent, surface: Color(0xffEDDCE4),);
    colorScheme.printMe();
    return GetBuilder<EzThemeController>(builder: (controller) {
      return GetMaterialApp(
        title: "Application",
        initialRoute: AppPages.INITIAL,
        getPages: AppPages.routes,
        theme: controller.themeLight,
        //     EzTheme.getIos(
        //   //EzSchemes.greenLight,
        //   colorScheme,
        //   Brightness.light,
        //   //   'assets/images/background/bl_pi_blur.webp',
        // ),
        darkTheme: controller.themeDark,

        // EzTheme.getIos(
        //   EzSchemes.tealDark,
        //   Brightness.dark,
        //   'assets/images/background/black_mramor.webp',
        // ),
        themeMode: //controller.mode,
            ThemeMode.light,
        debugShowCheckedModeBanner: false,
      ).withDevicePreview(true);
    });
  }
}
