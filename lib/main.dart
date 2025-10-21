

import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_miscellanous/app/common/extensions/device_previewing.dart';

import 'app/routes/app_pages.dart';

void main() { 
  WidgetsFlutterBinding.ensureInitialized();
  runApp (
  
  // DevicePreview(
  //   builder: (context) => MyApp(), // Wrap your app
  // ),
  MyApp()
);
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,

      // theme: ThemeData(
      //   filledButtonTheme: FilledButtonThemeData(style: Styles.red),
      // ),
    ).withDevicePreview(true);
  }
}


