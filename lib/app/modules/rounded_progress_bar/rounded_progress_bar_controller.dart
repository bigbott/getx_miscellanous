import 'dart:async';

import 'package:get/get.dart';

class RoundedProgressBarController extends GetxController {
  var percent = 0.0;
  late Timer timer;
  @override
  void onInit() {
    super.onInit();
    updateProgressBarPercent();
  }

  void updateProgressBarPercent() async {
    // timer = Timer.periodic(Duration(milliseconds: 20), (_) {
    //   percent += 5;
    //   if (percent >= 100) {
    //     percent = 20;
    //   }
    //   print(percent);
    //   update();
    // });
    while (true){
      await Future.delayed(Duration(milliseconds: 50));
      percent += 0.3;
      // if (percent >= 100){
      //   percent = 20;
      // }
      update();
    }
  }

  @override
  void onClose() {
     timer.cancel();
     super.onClose();
  }
}
