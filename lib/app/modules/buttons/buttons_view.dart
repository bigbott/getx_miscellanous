import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_miscellanous/app/modules/buttons/styles.dart';

import 'buttons_controller.dart';

class ButtonsView extends GetView<ButtonsController> {
  const ButtonsView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('ButtonsView'),
        centerTitle: true,
        actions: [TextButton(onPressed: (){}, child: Text('Edit'),),],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: SingleChildScrollView(
            child: Column(
              spacing: 30,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: Styles.wideBlue,
                  child: Text(
                    'Click me',
                    style: TextStyle(fontSize: 50),
                  ),
                ),
                ElevatedButton.icon(
                  onPressed: () {},
                  onLongPress: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      minimumSize: Size(double.infinity, 70),
                      foregroundColor: Colors.yellow),
                  label: Text(
                    'Click me',
                    style: TextStyle(fontSize: 50),
                  ),
                  icon: Icon(
                    Icons.handyman,
                    size: 50,
                    color: Colors.yellow,
                  ),
                  iconAlignment: IconAlignment.end,
                ),
                OutlinedButtonTheme(
                  data: OutlinedButtonThemeData(style: Styles.prevNext),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      OutlinedButton(
                        onPressed: () {},
                        child: Text(
                          'Prev',
                          style: TextStyle(fontSize: 30),
                        ),
                      ),
                      OutlinedButton(
                        onPressed: () {},
                        child: Text(
                          'Next',
                          style: TextStyle(fontSize: 30),
                        ),
                      ),
                    ],
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Click me',
                    style: TextStyle(
                        fontSize: 50,
                        color: Colors.blue.shade900,
                        decoration: TextDecoration.underline),
                  ),
                ),
                FilledButton(
                  onPressed: () {},
                  child: Text(
                    'Click me',
                    style: TextStyle(fontSize: 50),
                  ),
                ),
                FilledButton.tonal(
                  onPressed: () {},
                  child: Text(
                    'Click me',
                    style: TextStyle(fontSize: 50),
                  ),
                ),
                Container(
                  width: 300,
                  height: 100,
                  child: Card(
                    elevation: 2,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        OutlinedButton(
                          onPressed: () {},
                          child: Text(
                            'Cancel',
                            style: TextStyle(fontSize: 30),
                          ),
                        ),
                        FilledButton(
                          onPressed: () {},
                          child: Text(
                            'Save',
                            style: TextStyle(fontSize: 30),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                CupertinoButton(
                  onPressed: () {},
                  child: Text(
                    'Click me',
                    style: TextStyle(
                      fontSize: 50,
                    ),
                  ),
                ),
                CupertinoButton.filled(
                  onPressed: () {},
                  child: Text(
                    'Click me',
                    style: TextStyle(
                      fontSize: 50,
                    ),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: CupertinoButton.tinted(
                    //   borderRadius: BorderRadius.circular(40),
                    onPressed: () {},
                    child: Text(
                      'Click me',
                      style: TextStyle(
                        fontSize: 50,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 50,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
