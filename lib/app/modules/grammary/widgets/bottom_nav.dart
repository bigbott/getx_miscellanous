import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNav extends StatelessWidget {
  final String prevRoute;
  final String nextRoute;

  const BottomNav(
      {super.key, required this.prevRoute, required this.nextRoute});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        OutlinedButton(
          onPressed: () {
            Get.offNamed(prevRoute);
          },
          style: ButtonStyle(
            alignment: Alignment.centerLeft,
            padding: WidgetStateProperty.all<EdgeInsetsGeometry>(
              EdgeInsets.only(right: 20),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                Icons.chevron_left,
                size: 40,
              ),
              Text('Prev'),
            ],
          ),
        ),
        OutlinedButton(
          onPressed: () {
            Get.offNamed(nextRoute);
          },
          style: ButtonStyle(
            alignment: Alignment.centerRight,
            padding: WidgetStateProperty.all<EdgeInsetsGeometry>(
              EdgeInsets.only(left: 20),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text('Next'),
              Icon(
                Icons.chevron_right,
                size: 40,
              )
            ],
          ),
        ),
      ],
    );
  }
}
