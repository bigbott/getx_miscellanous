import 'package:get/get.dart';

class GesturePinchController extends GetxController {
  double _scaleFactor = 1.0;
  double get scaleFactor => _scaleFactor;
  set scaleFactor (value) {
    _scaleFactor = value;
    update();
  } 


  @override
  void onInit() {
    super.onInit();
    autoScale();
  }
  
  void autoScale() async{
    while (true) {
       await Future.delayed(Duration(seconds: 2));
       for (int i = 0; i < 20; i++) {
          await Future.delayed(Duration(milliseconds: 50));
          scaleFactor = scaleFactor + 0.08;
       }
        await Future.delayed(Duration(seconds: 2));
         for (int i = 0; i < 20; i++) {
          await Future.delayed(Duration(milliseconds: 50));
          scaleFactor = scaleFactor - 0.1;
       }
    }
    

  }

}
