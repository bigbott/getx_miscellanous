import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_miscellanous/app/presentation/pin_code/pin_theme_helper.dart';
import 'package:pinput/pinput.dart';
import 'pin_code_controller.dart';

class PinCodeView extends GetView<PinCodeController> with PinThemeHelper{
    PinCodeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Enter PIN'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          spacing: 10,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Enter 4-digit PIN code',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 22),
            GetBuilder<PinCodeController>(
              init: PinCodeController(),
              builder: (controller) {
              return Column(
                spacing: 5,
                children: [
                  Pinput(
                    length: 4,
                    defaultPinTheme: defaultPinTheme,
                    focusedPinTheme: focusPinTheme,
                    cursor: cursor,
                    onCompleted: (pin) => controller.onCompleted(pin),
                    onChanged: (value) => controller.onChange(value),
                    obscureText: true,
                    showCursor: true,
                    controller: controller.pinController,
                    focusNode: controller.focusNode,
                    pinAnimationType: PinAnimationType.rotation,
                   
                  ),
                  Text(controller.isWrong ? 'wrong pin' : '',
                      style: TextStyle(
                        color: Colors.red,
                      ))
                ],
              );
            }),
            const SizedBox(height: 32),
            TextButton(
              onPressed: controller.clearPin,
              child: const Text('Clear'),
            ),
          ],
        ),
      ),
    );
  }
}
