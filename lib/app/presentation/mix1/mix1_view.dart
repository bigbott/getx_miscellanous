import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_miscellanous/app/common/mix_styles/styles.dart';
import 'package:getx_miscellanous/app/presentation/mix1/widgets/custom_button.dart';
import 'package:getx_miscellanous/app/presentation/mix1/widgets/custom_button_m.dart';
import 'package:mix/mix.dart';

import 'mix1_controller.dart';

class Mix1View extends GetView<Mix1Controller> {
  const Mix1View({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mix1View'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Center(
              child: Column(
            spacing: 20,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 100,
                width: 100,
                margin: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 20,
                ),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.black,
                    width: 1,
                    style: BorderStyle.solid,
                  ),
                ),
                child: Text('Hello World'),
              ),
              Box(
                style: Style(
                    $box.height(100),
                    $box.width(100),
                    $box.margin(10, 20),
                    $box.color.blue(),
                    $box.borderRadius(10),
                    $box.border(
                      color: Colors.black,
                      width: 1,
                      style: BorderStyle.solid,
                    )),
                child: Text('Hello Mix'),
              ),
              Box(
                style: blue100,
                child: Text('Hello Mix'),
              ),
              Text(
                'text',
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 20,
                ),
              ),
              StyledText(
                'text',
                style: green20,
              ),
          
              SizedBox(
                height: 100,
                child: Row(
                  spacing: 20,
                  mainAxisAlignment: MainAxisAlignment.end,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(color: Colors.green, width: 100, ),
                    Container(color: Colors.red, width: 100,),
                  ],),
              ),  
              HBox(
                style: row20EndMax, 
                children: [
                  Box(
                    style: boxW100green,
                  ), 
                  Box(
                    style: boxW100red,
                  ),        
                ],
              ), 
              SizedBox(height: 20,),
              CustomButton(text: 'Click me', onPressed: (){}),
              CustomButtonM(text: 'Click me', onPressed: (){}),
            ],
          )),
        ),
      ),
    );
  }
}
