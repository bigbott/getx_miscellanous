import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_miscellanous/app/presentation/home/widgets/nav_button.dart';
import 'package:getx_miscellanous/app/routes/app_pages.dart';

import 'list_controller.dart';

class ListScreen extends GetView<ListController> {
  const ListScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView'),
        centerTitle: true,
        actions: [ NavButton(route: Routes.EXAMPLE, label: 'EXAMPLE'),],
      ),
      body:  Center(
        child: ListView(
        children: [
          ...Iterable.generate(
            100,
            (i) => ListTile(
              title: Text('Tile $i'),
              onTap: () {},
            ),
          )
        ], 
      ),
      ),
    );
  }
}
