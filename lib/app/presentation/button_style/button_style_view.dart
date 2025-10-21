import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_miscellanous/app/presentation/button_style/styles.dart';

import 'button_style_controller.dart';

class ButtonStyleView extends GetView<ButtonStyleController> {
  const ButtonStyleView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ButtonStyleView'),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 50,
              children: [
                OutlinedButton(
                  onPressed: () {},
                  style: Styles.align,
                  child: Text(
                    'Click me',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                OutlinedButton(
                  onPressed: () {},
                  style: Styles.bgBuilder,
                  child: Text(
                    'Click me',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                 OutlinedButton(
                  onPressed: () {},
                  style: Styles.bgColor,
                  
                  child: Text(
                    'Click me',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: Styles.elevation,                
                  child: Text(
                    'Click me',
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: Styles.animDuration,                
                  child: Text(
                    'Click me',
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                ),
                OutlinedButton(
                  onPressed: () {},
                  style: Styles.fixedSize,                
                  child: Text(
                    'Click me',
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                ),
                OutlinedButton(
                  onPressed: () {},
                  style: Styles.fgColor,                
                  child: Text(
                    'Click me',
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                ),
                 OutlinedButton.icon(
                  onPressed: () {},
                  style: Styles.icon,  
                  icon: Icon(Icons.tap_and_play), 
                  iconAlignment: IconAlignment.end,             
                  label: Text(
                    'Click me',
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                ),
                 OutlinedButton(
                  onPressed: () {},
                  style: Styles.overlay,                
                  child: Text(
                    'Click me',
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                ),
                OutlinedButton(
                  onPressed: () {},
                  style: Styles.padding,                
                  child: Text(
                    'Click me',
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                ),
                OutlinedButton(
                  onPressed: () {},
                  style: Styles.density,                
                  child: Text(
                    'Click me',
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: Styles.shadow,                
                  child: Text(
                    'Click me',
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                ),
                OutlinedButton(
                  onPressed: () {},
                  style: Styles.shapeAndSide,                
                  child: Text(
                    'Click me',
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                ),
                OutlinedButton(
                  onPressed: () {},
                  style: Styles.shapeAndSideStatic,                
                  child: Text(
                    'Click me',
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                ),
                 OutlinedButton(
                  onPressed: () {},
                  style: Styles.splash,                
                  child: Text(
                    'Click me',
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                ),
                 ElevatedButton(
                  onPressed: () {},
                  style: Styles.surfaceTint,                
                  child: Text(
                    'Click me',
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                ),
                 OutlinedButton(
                  onPressed: () {},
                  style: Styles.star,                
                  child: Text(
                    'Click me',
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                ),
                SizedBox(height: 300,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
