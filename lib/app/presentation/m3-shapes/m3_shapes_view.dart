import 'package:flutter/material.dart';
import 'package:flutter_m3shapes/flutter_m3shapes.dart';
import 'package:get/get.dart';
import 'package:getx_miscellanous/app/common/ez/ez_3d_text.dart';
import 'package:getx_miscellanous/app/common/ez/ez_glass_shaped_button.dart';
import 'package:getx_miscellanous/app/common/ez/ez_shaped_button.dart';
import 'package:getx_miscellanous/app/presentation/m3-shapes/m3_shapes_controller.dart';

class M3ShapesView extends GetView<M3ShapesController> {
  const M3ShapesView({super.key});

  @override
  Widget build(BuildContext context) {
    const double size = 120;

    return Scaffold(
      appBar: AppBar(title: const Text('Flutter M3Shapes Showcase')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Center(
          child: Wrap(
            spacing: 20,
            runSpacing: 20,
            alignment: WrapAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 50,
                children: [
                  _shapeExample(
                    'heart',
                    M3Container.hearth(
                      color: Colors.pink,
                      width: size,
                      height: size,
                      child: const Center(child: Text("hearth")),
                    ),
                  ),
                  _shapeExample(
                    'boom',
                    M3Container.boom(
                      color: Colors.green,
                      width: size,
                      height: size,
                      child: const Center(child: Text("boom")),
                    ),
                  ),
                  _shapeExample(
                    'Pill',
                    M3Container.pill(
                      color: Colors.indigo,
                      width: size * 1.2,
                      height: size * 0.6,
                      child: const Center(child: Text("Pill")),
                    ),
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 50,
                children: [
                  _shapeExample(
                    'Slanted',
                    M3Container.slanted(
                      color: Colors.orange,
                      width: size,
                      height: size,
                      child: const Center(child: Text("Slanted")),
                    ),
                  ),
                  _shapeExample(
                    'burst',
                    M3Container.burst(
                      color: Colors.purple,
                      width: size,
                      height: size,
                      child: const Center(child: Text("burst")),
                    ),
                  ),
                  _shapeExample(
                    'flower',
                    M3Container.flower(
                      color: Colors.cyan,
                      width: size,
                      height: size,
                      child: const Center(child: Text("flower")),
                    ),
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 50,
                children: [
                  _shapeExample(
                    'c7SidedCookie',
                    M3Container.c7SidedCookie(
                      color: Colors.teal,
                      width: size,
                      height: size,
                      child: const Center(child: Text("c7SidedCookie")),
                    ),
                  ),
                  _shapeExample(
                    'diamond',
                    M3Container.diamond(
                      color: Colors.red,
                      width: size * 1.2,
                      height: size * 0.6,
                      child: const Center(child: Text("diamond")),
                    ),
                  ),
                  _shapeExample(
                    'pixelTriangle',
                    M3Container(
                      Shapes.pixel_triangle,
                      color: Colors.deepOrange,
                      width: size,
                      height: size,
                      child: const Center(child: Text("pixelTriangle")),
                    ),
                  ),
                ],
              ),

              // --- Profile pictures ---
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 50,
                children: [
                  _shapeExample(
                    'Profile c9_sided_cookie',
                    M3Container(
                      Shapes.c9_sided_cookie,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      width: size,
                      height: size,
                      child: Container(
                          color: Colors.black,
                          child: Image.asset(
                            'assets/images/baby.png',
                          )),
                    ),
                  ),
                  _shapeExample(
                    'Profile flower',
                    M3Container(
                      Shapes.flower,
                      clipBehavior: Clip.hardEdge,
                      width: size,
                      height: size,
                      child: Image.network(
                        'https://i.pravatar.cc/150?img=5',
                      ),
                    ),
                  ),
                ],
              ),

              // --- Custom buttons ---

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 50,
                children: [
                  EzShapedButton(
                    shape: Shapes.slanted,
                    color: Colors.green,
                    width: 150,
                    height: 60,
                    child: Ez3dText(
                      'Click me!',
                      fontSize: 18,
                    ),
                  ),
                  EzShapedButton(
                    shape: Shapes.pill,
                    color: Colors.blue,
                    width: 150,
                    height: 60,
                    child: Ez3dText(
                      'Click me!',
                      fontSize: 18,
                    ),
                  ),
                  EzShapedButton(
                    shape: Shapes.diamond,
                    color: Colors.red,
                    width: 150,
                    height: 60,
                    child: Ez3dText(
                      'Click me!',
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 50,
                children: [
                  EzShapedButton(
                    shape: Shapes.arrow,
                    color: Colors.purple,
                    width: 150,
                    height: 60,
                    child: Ez3dText(
                      'Click me!',
                      fontSize: 18,
                    ),
                  ),
                  EzShapedButton(
                    shape: Shapes.burst,
                    color: Colors.amber.shade800,
                    width: 150,
                    height: 60,
                    child: Ez3dText(
                      'Click me!',
                      fontSize: 18,
                    ),
                  ),
                  EzShapedButton(
                    shape: Shapes.ghostish,
                    color: Colors.cyan.shade900,
                    width: 150,
                    height: 60,
                    child: Ez3dText(
                      'Click me!',
                      fontSize: 18,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _shapeExample(String title, Widget shape) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        shape,
        const SizedBox(height: 8),
        Text(title, style: const TextStyle(fontWeight: FontWeight.w500)),
      ],
    );
  }
}
