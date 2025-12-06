import 'package:get/get.dart';
import 'package:getx_miscellanous/app/data/no_if/user_model.dart';
import 'package:getx_miscellanous/app/data/no_if/user_service.dart';

class RegularController extends GetxController {
   final UserService _service = UserService();

bool isLoading = false;
User? user; 
String? error;

  @override
  void onInit() {
    super.onInit();
    loadUser('123');
  }

  Future<void> loadUser(String userId) async {
    isLoading = true;
    update();

    try {
      user = await _service.fetchUser(userId);
      error = null;
    } catch (e) {
       error = e.toString();
       user = null;
    } finally {
      isLoading = false;
      update();
    }
  }
}
