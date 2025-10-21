import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'color_examples_controller.dart';

class ColorExamplesView extends GetView<ColorExamplesController> {
  const ColorExamplesView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('ColorExamplesView'),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Center(
            child: Column(
              spacing: 50,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Hello',
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 60,
                  ),
                ),
                const Text(
                  'Hello',
                  style: TextStyle(color: Color(0xFF1B5E20), fontSize: 60),
                ),
                const Text(
                  'Hello',
                  style: TextStyle(color: Color.fromARGB(0xFF, 0x1B, 0x5E, 0x20), fontSize: 60),
                ),
                const Text(
                  'Hello',
                  style: TextStyle(
                      color:
                          Color.from(alpha: 1.0, red: 27 / 255, green: 94 / 255, blue: 32 / 255),
                      fontSize: 60),
                ),
                Text(
                  'Hello',
                  style: TextStyle(color: Colors.green.shade900, fontSize: 60),
                ),
                Text(
                  'Hello',
                  style: TextStyle(
                      color: Color.alphaBlend(
                        Colors.black38,
                        Colors.green.shade900,
                      ),
                      fontSize: 60),
                ),
                Text(
                  'Hello',
                  style: TextStyle(
                      color: Color.alphaBlend(
                        Colors.red.withValues(alpha: .5),
                        Colors.blue.withValues(alpha: .5),
                      ),
                      fontSize: 60),
                ),
                Row(
                  spacing: 20,
                  children: [
                    Container(
                      width: 150,
                      height: 150,
                      color: Colors.black,
                      child: Center(
                        child: Container(
                          width: 100,
                          height: 100,
                          color: Colors.white24,
                        ),
                      ),
                    ), 
                     Container(
                      width: 150,
                      height: 150,
                      color: Colors.green.shade900,
                      child: Center(
                        child: Container(
                          width: 100,
                          height: 100,
                          color: Colors.white24,
                        ),
                      ),
                    ), 
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
