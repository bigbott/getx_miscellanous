import 'package:flutter/material.dart';
import 'package:getx_miscellanous/app/common/hourglass/hourglass_loader.dart';

class HourglassLoaderView extends StatelessWidget {
  const HourglassLoaderView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Center(
            child: HourglassLoader(
          duration: Duration(seconds: 5),
          width: 120,
          height: 180,
          sandColor: Colors.amber,
        )),
      ),
    );
  }
}
