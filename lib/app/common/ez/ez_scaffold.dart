import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_miscellanous/app/common/ez/theme/ez_theme_controller.dart';

import 'theme/ez_bg_exension.dart';

class EzScaffold extends GetView<EzThemeController> {
  final Widget body;
  final PreferredSizeWidget? appBar;
  final Widget? floatingActionButton;
  final FloatingActionButtonLocation? floatingActionButtonLocation;
  final Widget? bottomNavigationBar;
  final Widget? drawer;
  final Widget? endDrawer;

  const EzScaffold({
    super.key,
    required this.body,
    this.appBar,
    this.floatingActionButton,
    this.floatingActionButtonLocation,
    this.bottomNavigationBar,
    this.drawer,
    this.endDrawer,
  });

  @override
  Widget build(BuildContext context) {
    final loadingColor = controller.theme.colorScheme.surface;
    

    return Scaffold(
      backgroundColor: Colors.transparent,
      extendBodyBehindAppBar: true,
      appBar: appBar,
      drawer: drawer,
      endDrawer: endDrawer,
      floatingActionButton: floatingActionButton,
      floatingActionButtonLocation: floatingActionButtonLocation,
      bottomNavigationBar: bottomNavigationBar,
      body: Stack(
        children: [
          // Background image container with loading color
          Container(
            width: double.infinity,
            height: double.infinity,
            color: loadingColor,
            child: Image.asset(
              // controller.theme.extension<Bg>()!.bgImage,
              //Get.theme.extension<Bg>()!.bgImage,
              controller.bgImage,
              fit: BoxFit.cover,
              cacheWidth: null,
              cacheHeight: null,
              frameBuilder: (context, child, frame, wasSynchronouslyLoaded) {
                if (wasSynchronouslyLoaded || frame != null) {
                  return child;
                }
                return Container(color: loadingColor);
              },
              errorBuilder: (context, error, stackTrace) {
                return Container(color: loadingColor);
              },
            ),
          ),
          SafeArea(
              child: Center(
            child: body,
          ))
        ],
      ),
    );
  }
}
