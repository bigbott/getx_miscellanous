import 'package:get/get.dart';

class GestureDragController extends GetxController {
  double _horizontalValue = 0.5;
  double get horizontalValue => _horizontalValue;
  set horizontalValue(value) {
    _horizontalValue = value;
    update(['horizontal']);
  }

  double _verticalValue = 0.5;
  double get verticalValue => _verticalValue;
  set verticalValue(value) {
    _verticalValue = value;
    update(['vertical']);
  }
}
