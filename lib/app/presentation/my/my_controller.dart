import 'package:flutter/material.dart';

class MyViewModel extends ChangeNotifier {

  final textController = TextEditingController();

  void onInit() {
    print('initial data has been loaded');
  }

  void onDispose() {
    textController.dispose();
    print('textController has been disposed');
  }

}
