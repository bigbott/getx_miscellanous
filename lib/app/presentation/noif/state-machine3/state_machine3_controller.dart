import 'package:get/get.dart';
import 'package:getx_miscellanous/app/data/no_if/user_model.dart';
import 'package:getx_miscellanous/app/data/no_if/user_service.dart';

class StateMachine3Controller extends GetxController {
  final UserService _service = UserService();

  UserState _currentState = UserState.loading;

  UserState get currentState => _currentState;

  User? user;
  String? errorMessage;

  @override
  void onInit() {
    super.onInit();
    loadUser('123');
  }

  Future<void> loadUser(String userId) async {
    _currentState = UserState.loading;
    update();

    try {
      user = await _service.fetchUser(userId);
      _currentState = UserState.success;
    } catch (e) {
      errorMessage = e.toString();
     _currentState = UserState.error;
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
