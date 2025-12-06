import 'package:signals/signals_flutter.dart';

class UserModel {
  final int age;
  final String name;

  UserModel({required this.age, required this.name});

  UserModel.empty()
      : name = '',
        age = 0;

  UserModel copyWith({int? age, String? name}) => UserModel(
        age: age ?? this.age,
        name: name ?? this.name,
      );
}

class UserService {
   UserModel load (){
     var newState = UserModel(age: 37, name: 'John');
     return newState;
   }

   UserModel changeName (UserModel state, String newName){
     var newState = state.copyWith(name: newName);
     return newState;
   }

   UserModel changeAge (UserModel state, int newAge){
     var newState = state.copyWith(age: newAge);
     return newState;
   }
}

class UserViewModel {

  final UserService _service;

  var _state = UserModel.empty();
  late FlutterSignal _signal;

  int get age => _signal.value.age;
  String get name => _signal.value.name;

  UserViewModel(this._service){
    init();
  }

  void init () {
    _state = _service.load();
    _signal = signal(_state); 
  }

  void updateName (String name){
    _state = _service.changeName(_state, name);
    _signal.value = _state;
  }

  void updateAge (int age){
    _state = _service.changeAge(_state, age);
    _signal.value = _state;
  }
  
}
