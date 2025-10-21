import 'package:flutter/material.dart';
import 'package:getx_miscellanous/app/presentation/my/my_controller.dart';
import 'package:getx_miscellanous/app/presentation/my/widgets/lifecycle.dart';



class MyView extends StatelessWidget {
  const MyView({super.key});
  @override
  Widget build(BuildContext context) {
    var myViewModel = MyViewModel();
    return Lifecycle(
      init: myViewModel.onInit,
      dispose: myViewModel.onDispose,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('MyView'),
          centerTitle: true,
        ),
        body:  Center(
          child: Column(
            children: [
              Text(
                'MyView is working',
                style: TextStyle(fontSize: 20),
              ),
              Lifecycle(
                init: myViewModel.onInit,
                dispose: myViewModel.onDispose,
              )
            ],
          ),
        ),
      ),
    );
  }
}
