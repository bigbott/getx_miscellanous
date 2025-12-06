import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_miscellanous/app/data/no_if/user_service.dart';


class WidgetFactory {
  static Map<String, Function> widgets = {
    'loading': (text) => CircularProgressIndicator(),
    'success': (text) =>Text(
        text,
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
    'error': (text) => Text(text,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Get.theme.colorScheme.error,
          )),

  };

  static Widget getWidget(String state, [String text = '']) {
    Function? builder = widgets[state];

    if (builder == null){
       throw Exception('Widget not found by the state:$state');
    }

    return builder(text);
  }
}

class NovisibilityExampleController extends GetxController {
  final UserService _service = UserService();

  Widget? _widget;
  Widget get widget => _widget!;

  @override
  void onInit() {
    super.onInit();
    loadUser('123');
  }

  Future<void> loadUser(String userId) async {
    _widget = WidgetFactory.getWidget('loading');
    update();

    try {
       var user = await _service.fetchUser(userId);
      // _widget = Text(
      //   user.name,
      //   style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      // );
      _widget = WidgetFactory.getWidget('success', user.name);
    } catch (e) {
      var error = e.toString();
      // _widget = Text(error,
      //     style: TextStyle(
      //       fontSize: 18,
      //       fontWeight: FontWeight.bold,
      //       color: Get.theme.colorScheme.error,
      //     ));
      _widget = WidgetFactory.getWidget('error', error);
    } finally {
      update();
    }
  }
}
