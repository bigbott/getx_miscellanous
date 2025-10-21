import 'package:get/get.dart';

class InkwellController extends GetxController {
  bool isPlaying = false;

  void handleTap() {
    isPlaying = !isPlaying;
    var message = 'Playing is stopped';
    if (isPlaying) {
      message = 'Playing with normal speed';
    }
    Get.showSnackbar(GetSnackBar(
      message: message,
      duration: Duration(seconds: 1),
    ));

    update(['play']);
  }

  void handleDoubleTap() {
    isPlaying = !isPlaying;
    var message = 'Playing is stopped';
    if (isPlaying) {
      message = 'Playing fast';
    }
    Get.showSnackbar(GetSnackBar(
      message: message,
      duration: Duration(seconds: 1),
    ));
    update(['play']);
  }

  void handleLongPress() {
    isPlaying = !isPlaying;
    var message = 'Playing is stopped';
    if (isPlaying) {
      message = 'Playing slowly';
    }
    Get.showSnackbar(GetSnackBar(
      message: message,
      duration: Duration(seconds: 1),
    ));
    update(['play']);
  }
}
