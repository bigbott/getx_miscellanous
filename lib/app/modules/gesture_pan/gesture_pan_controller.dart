import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GesturePanController extends GetxController {
  Offset _position = Offset(0, 0);

  Offset get position => _position;

  void changePosition(deltaX, deltaY) {
    _position = Offset(
      _position.dx + deltaX,
      _position.dy + deltaY,
    );
    update();
  }
}
