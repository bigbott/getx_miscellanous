import 'package:get/get.dart';
import 'package:getx_miscellanous/app/data/no_if/user_model.dart';
import 'package:getx_miscellanous/app/data/no_if/user_service.dart';
import 'package:statemachine/statemachine.dart';

class StateMachine2Controller extends GetxController {
  final UserService _service = UserService();

  late final machine = Machine<UserState>();

  late final loading = machine.newState(UserState.loading);
  late final error = machine.newState(UserState.error);
  late final success = machine.newState(UserState.success);

  UserState get currentState => machine.current!.identifier;

  User? user;
  String? errorMessage;

  @override
  void onInit() {
    super.onInit();
    machine.start();
    loadUser('123');
  }

  Future<void> loadUser(String userId) async {
    machine.current = loading;
    update();

    try {
       user = await _service.fetchUser(userId);
      machine.current = success;
    } catch (e) {
       errorMessage = e.toString();
      machine.current = error;
    } finally {
      update();
    }
  }
}

enum UserState {
  loading,
  error,
  success,
}
