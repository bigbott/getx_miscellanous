import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:getx_miscellanous/app/routes/app_pages.dart';

class PinCodeController extends GetxController {
  String secretPin = '1234';
  bool isWrong = false;
  final pinController = TextEditingController();
  final focusNode = FocusNode();

  @override
  onInit() {
    super.onInit();
    focusNode.requestFocus(); 

  }

  void onCompleted(String pin) {
    pinController.value = TextEditingValue.empty;
    focusNode.requestFocus(); 
    update();

    if (pin == secretPin) {
      pinController.value = TextEditingValue.empty;

      Get.toNamed(Routes.WELCOME);
      return;
    }
    isWrong = true;
    update();
  }

  void onChange(val) {
    isWrong = false;
    update();
  }

  void clearPin() {
    pinController.value = TextEditingValue.empty;
    update();
  }

  @override
  void onClose() {
    pinController.dispose();
    focusNode.dispose();
    super.onClose();
  }
}
