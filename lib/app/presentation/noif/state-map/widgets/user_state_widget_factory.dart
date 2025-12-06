import 'package:flutter/material.dart';
import 'package:getx_miscellanous/app/data/no_if/user_model.dart';

class UserStateWidgetFactory {
  static Map<UserState, Function> _widgets = {
    UserState.loading: (result) => CircularProgressIndicator(),
     UserState.success: (result) => Text(
          (result as User).name,
        ),
     UserState.error: (result) => Text(
          result.toString(),
        ),
  };

  static Widget getWidget(UserState state, Object? result) {
    Function? builder = _widgets[state];

    if (builder == null) {
      throw Exception('Widget not found by the state:$state');
    }

    return builder(result);
  }
}

enum UserState {
  loading,
  error,
  success,
}
