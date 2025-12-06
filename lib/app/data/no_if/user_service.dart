
import 'user_model.dart';

class UserService {
  Future<User> fetchUser(String userId) async {
    // Simulate network delay
    await Future.delayed(Duration(seconds: 2));

    // Simulate random success/failure
    final seconds = DateTime.now().second;
    print(seconds);
    if (seconds % 2 == 0) {
      throw Exception('Failed to load _user');
    }

    return User(
      id: userId,
      name: 'John Doe',
      email: 'john@example.com',
    );
  }
}