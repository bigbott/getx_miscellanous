import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_miscellanous/app/data/no_if/user_model.dart';
import 'package:getx_miscellanous/app/data/no_if/user_service.dart';

class StateMachineController extends GetxController {
  final UserService _service = UserService();

  UserState _currentState = LoadingState();
  UserState get currentState => _currentState;

  @override
  void onInit() {
    super.onInit();
    loadUser('123');
  }

  Future<void> loadUser(String userId) async {
    _currentState = LoadingState();
    update();

    try {
      var user = await _service.fetchUser(userId);
      _currentState = SuccessState(user);
    } catch (e) {
      var error = e.toString();
      _currentState = ErrorState(error);
    } finally {
      update();
    }
  }
}

sealed class UserState {
  Widget buildView();
}

class LoadingState extends UserState {
  @override
  Widget buildView() {
    return const Center(child: CircularProgressIndicator());
  }
}

class ErrorState extends UserState {
  final String message;
  ErrorState(this.message);

  @override
  Widget buildView() {
    return Center(child: Text('Error: $message'));
  }
}

class SuccessState extends UserState {
  final User user;
  SuccessState(this.user);

  @override
  Widget buildView() {
    return Center(child: Text('Name: ${user.name}'));
  }
}
