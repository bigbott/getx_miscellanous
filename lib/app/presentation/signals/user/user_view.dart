import 'package:flutter/material.dart';
import 'package:getx_miscellanous/app/data/no_if/user_service.dart' hide UserService;
import 'package:signals/signals_flutter.dart';

import 'user_controller.dart';



class UserView extends StatelessWidget {
   UserView({super.key});
  final viewModel = UserViewModel(UserService());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Composite Model with Signals')),
      body: Center(
        child: Column(
          spacing: 20,
          children: [
            SizedBox(height: 100,),
            Watch((context) {
              // This rebuilds when counter changes
              return Text(
                '${viewModel.name} ${viewModel.age}',
                style: TextStyle(fontSize: 32),
              );
            }),
            ElevatedButton(
              onPressed: () {
                 if(viewModel.name == 'John'){
                   viewModel.updateName('Sarah');
                 } else {
                    viewModel.updateName('John');
                 }
              },
              child: Text('Update name', style: TextStyle(fontSize: 18,),),
            ),
             ElevatedButton(
              onPressed: () {
                 if(viewModel.age == 37){
                   viewModel.updateAge(29);
                 } else {
                    viewModel.updateAge(37);
                 }
              },
              child: Text('Update age', style: TextStyle(fontSize: 18,),),
            ),
          ],
        ),
      ),
    );
  }
}
