import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:liquid_glass_easy/liquid_glass_easy.dart';

import 'registration_controller.dart';

class RegistrationView extends GetView<RegistrationController> {
  const RegistrationView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Liquid button'),
        centerTitle: true,
      ),
      body: LiquidGlassView(
        backgroundWidget:// Image.asset('assets/images/background/purple_texture_dark.webp', fit: BoxFit.cover),
         Image.network(
        "https://raw.githubusercontent.com/AhmeedGamil/liquid_glass_easy_assets/refs/heads/main/socotra_tree_2.jpg",
        fit: BoxFit.cover,
        width: double.infinity,
        height: double.infinity,
      ),
        children: [
          LiquidGlass(
            width: 300,
            height: 70,
            magnification: 1,
            distortion: 0.2,
            distortionWidth: 50,
            blur: LiquidGlassBlur(sigmaX: 1.75, sigmaY: 0.75),
                shape: RoundedRectangleShape(
                    //highDistortionOnCurves: true,
                    cornerRadius: 24,
                    borderWidth: 3,
                    borderSoftness: 5.5,
                    lightIntensity: 1.5,
                ),
            position: LiquidGlassAlignPosition(alignment: Alignment.center),
            
            child: Center(child: 
            SizedBox(
              width: 300,
              height: 70,
              child: FilledButton(onPressed: () {  },
              style: FilledButton.styleFrom(
                backgroundColor: Colors.transparent, 
                foregroundColor: Colors.white,
                overlayColor: Colors.yellow,
                surfaceTintColor: Colors.blue,
              ), 
              child: Text('Click me!', style: TextStyle(fontSize: 24,),)),
            )), 
          ),
        ],
      ),
    );
  }
}
