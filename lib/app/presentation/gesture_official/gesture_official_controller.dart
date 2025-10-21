import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GestureOfficialController extends GetxController {
  var _lightsOn = false;

  bool get lightsOn => _lightsOn;
  set lightsOn(value) {
    _lightsOn = value;
    update(['bulb']);
  }

  var _color = Colors.blue; 
  Color get color => _color;
  void changeColor() {
    _color = color == Colors.blue ? Colors.yellow : Colors.blue;
    update(['color']);
  }
}
