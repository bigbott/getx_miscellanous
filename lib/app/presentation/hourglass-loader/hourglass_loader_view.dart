import 'package:flutter/material.dart';
import 'package:getx_miscellanous/app/common/hourglass/hourglass_loader.dart';

class HourglassLoaderView extends StatelessWidget {
  const HourglassLoaderView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade900,
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Center(
            child: HourglassLoader(
          duration: Duration(seconds: 2),
          width: 120,
          height: 180,
          topBottomColor: Colors.grey.shade400,
          glassColor: Colors.lightBlueAccent.shade200,
          sandColor: Colors.amber,
        )),
      ),
    );
  }
}
