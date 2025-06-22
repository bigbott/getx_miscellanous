import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_miscellanous/app/modules/inkwell/widgets/play_icon_button.dart';

import 'gesture_official_controller.dart';

class GestureOfficialView extends GetView<GestureOfficialController> {
  const GestureOfficialView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<GestureOfficialController>(
                id: 'bulb',
                builder: (controller) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.lightbulb_outline,
                          color: controller.lightsOn ? Colors.yellow.shade600 : Colors.black,
                          size: 60,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          controller.lightsOn = !controller.lightsOn;
                        },
                        child: Container(
                          color: Colors.yellow.shade600,
                          padding: const EdgeInsets.all(8),
                          // Change button text when light changes state.
                          child:
                              Text(controller.lightsOn ? 'TURN LIGHT OFF' : 'TURN LIGHT ON'),
                        ),
                      ),
                    ],
                  );
                }),
            SizedBox(
              height: 100,
            ),
            GetBuilder<GestureOfficialController>(
                id: 'color',
                builder: (controller) {
                  return Container(
                      color: controller.color,
                      height: 200.0,
                      width: 200.0,
                      child: GestureDetector(
                        onTap: () {
                          controller.changeColor();
                        },
                      ));
                }),
            SizedBox(
              height: 100,
            ),
            AudioIconButton(
              isPlaying: false,
              onTap: (){ print('play');},
              onDoubleTap: (){ print('play fast');},
              onLongPress: (){ print('play slowly');},
            ),
          ],
        ),
      ),
    );
  }
}
