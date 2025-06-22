import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_miscellanous/app/modules/inkwell/widgets/custom_button.dart';
import 'package:getx_miscellanous/app/modules/inkwell/widgets/image_button.dart';
import 'package:getx_miscellanous/app/modules/inkwell/widgets/interactive_card.dart';
import 'package:getx_miscellanous/app/modules/inkwell/widgets/interactive_list_item.dart';
import 'package:getx_miscellanous/app/modules/inkwell/widgets/play_icon_button.dart';
import 'package:getx_miscellanous/app/modules/inkwell/widgets/section.dart';

import 'inkwell_controller.dart';

class InkwellView extends GetView<InkwellController> {
  const InkwellView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('InkWell Custom Widgets'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SectionHeader(title: '1. Custom Buttons with InkWell'),
            const SizedBox(height: 28),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomButton(
                  icon: Icons.favorite,
                  label: 'Like',
                  color: Colors.red,
                  onTap: () => () {},
                ),
                CustomButton(
                  icon: Icons.share,
                  label: 'Share',
                  color: Colors.blue,
                  onTap: () => () {},
                ),
                CustomButton(
                  icon: Icons.comment,
                  label: 'Comment',
                  color: Colors.green,
                  onTap: () => () {},
                ),
              ],
            ),
            const SizedBox(height: 32),
            const SectionHeader(title: '2. Interactive Cards'),
            const SizedBox(height: 28),
            InteractiveCard(
              title: 'Morning Routine',
              description: 'Simple steps to start your day right',
              icon: Icons.wb_sunny,
              onTap: () => () {},
            ),
            const SizedBox(height: 16),
            InteractiveCard(
              title: 'Evening Reflection',
              description: 'Review your day and plan for tomorrow',
              icon: Icons.nightlight_round,
              onTap: () => () {},
            ),
            const SizedBox(height: 32),
            const SectionHeader(title: '3. Custom List Items'),
            const SizedBox(height: 28),
            InteractiveListItem(
              leading: const CircleAvatar(
                backgroundColor: Colors.purple,
                child: Icon(Icons.person, color: Colors.white),
              ),
              title: 'Artem Novikov',
              subtitle: 'UX Designer',
              trailing: const Icon(Icons.arrow_forward_ios, size: 16),
              onTap: () => () {},
            ),
            const Divider(),
            InteractiveListItem(
              leading: const CircleAvatar(
                backgroundColor: Colors.orange,
                child: Icon(Icons.person, color: Colors.white),
              ),
              title: 'Yuriy Novikov',
              subtitle: 'Software Engineer',
              trailing: const Icon(Icons.arrow_forward_ios, size: 16),
              onTap: () {},
            ),
            const SizedBox(height: 32),
            const SectionHeader(title: '4. Image Buttons'),
            const SizedBox(height: 28),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ImageButton(
                  imageProvider: const NetworkImage(
                      'https://images.unsplash.com/photo-1472396961693-142e6e269027?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8bmF0dXJlfGVufDB8fDB8fHwy'),
                  label: 'Nature',
                  onTap: () {},
                ),
                ImageButton(
                  imageProvider: const NetworkImage(
                      'https://images.unsplash.com/photo-1575550959106-5a7defe28b56?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
                  label: 'Wildlife',
                  onTap: () {},
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            GetBuilder<InkwellController>(
              id: 'play',
              builder: (controller) {
                return AudioIconButton(
                    color: Colors.blue,
                    isPlaying: controller.isPlaying,
                    onTap: () {
                      controller.handleTap();
                    },
                    onDoubleTap: () {
                      controller.handleDoubleTap();
                    },
                    onLongPress: () {
                      controller.handleLongPress();
                    });
              }
            ), 
            SizedBox(height: 100,),
          ],
        ),
      ),
    );
  }
}
