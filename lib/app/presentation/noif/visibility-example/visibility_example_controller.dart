import 'package:get/get.dart';
import 'package:getx_miscellanous/app/data/no_if/user_model.dart';
import 'package:getx_miscellanous/app/data/no_if/user_service.dart';


class VisibilityExampleController extends GetxController {
  final UserService _service = UserService();
  
  bool isLoading = false;
  User? _user;
  String? _error;
  
  bool get hasData => _user != null;
  bool get hasError => _error != null;
  String get username => _user != null ? _user!.name : '';
  String get errorMessage => _error != null ? _error! : '';

  @override
  void onInit() {
    super.onInit();
     loadUser('123');
  }  
  
  Future<void> loadUser(String userId) async {
    isLoading = true;
    _error = null;
    _user = null;
    update();
    
    try {
      _user = await _service.fetchUser(userId);
    } catch (e) {
      _error = e.toString();
    } finally {
      isLoading = false;
      update();
    }
  }
}
