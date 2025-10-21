import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'async_examples_controller.dart';

class AsyncExamplesView extends GetView<AsyncExamplesController> {
  const AsyncExamplesView({super.key});
  @override
  Widget build(BuildContext context) {

    // asyncFunction();
    // microtaskFunction();
    // syncFunction();

   

    return Scaffold(
      appBar: AppBar(
        title: const Text('AsyncExamplesView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'AsyncExamplesView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

void syncFunction() {
  print('sync function called');
}


void microtaskFunction() {
  Future.microtask(() => print('microtask Function called'));
}

void asyncFunction() {
  Future(() => print('async Function called'));
}

Future<int> myAsyncFuction () async{
   int x = 3;
   await Future.delayed(Duration(seconds: 1)); 
   return x;
}

Future<int> myAsyncFuction1 () async{
   int x = 3;
   return Future.value(x); 
}

Future<int> myAsyncFuction2 () async{
   int x = 3;
   return Future.sync(() => x); 
}

Future<int> myAsyncFuction3 () async{
   int x = 3;
   return Future.microtask(() => x); 
}

Future<int> myAsyncFuction4 () async{
   return Future.error(Exception('my exception')); 
}

Map<String, String> sourceMap = {};
void loadSources () {
   loadAsset('asset1').then((result) => sourceMap['key1'] = result); 
   loadAsset('asset2').then((result) => sourceMap['key2'] = result);
   loadAsset('asset3').then((result) => sourceMap['key3'] = result);

}

Future<String> loadAsset (val) async{
   await Future.delayed(Duration(milliseconds: 500 ));
   return '';
}

void loadSourcesWrapper () {

}
