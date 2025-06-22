import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'audio_controller.dart';

class AudioView extends GetView<AudioController> {
  const AudioView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text with Audio Player'),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            controller: controller.scrollController,
            padding: const EdgeInsets.only(bottom: 100),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                '''All things change except barbers, the ways of barbers, and the surroundings of barbers. These never change. What one experiences in a barber's shop the first time he enters one is what he always experiences in barbers' shops afterward till the end of his days. I got shaved this morning as usual. A man approached the door from Jones Street as I approached it from Main—a thing that always happens. I hurried up, but it was of no use; he entered the door one little step ahead of me, and I followed in on his heels and saw him take the only vacant chair, the one presided over by the best barber. It always happens so. I sat down, hoping that I might fall heir to the chair belonging to the better of the remaining two barbers, for he had already begun combing his man's hair, while his comrade was not yet quite done rubbing up and oiling his customer's locks. ''',
                key: controller.textKey,
                style: const TextStyle(fontSize: 20),
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              color: Theme.of(context).scaffoldBackgroundColor,
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  GetBuilder<AudioController>(
                    builder: (controller) => Row(
                      children: [
                        IconButton(
                          icon: Icon(
                            controller.isPlaying
                                ? Icons.pause_circle_filled
                                : Icons.play_circle_filled,
                            size: 48,
                          ),
                          onPressed: controller.togglePlayPause,
                        ),
                        Expanded(
                          child: Slider(
                            value: controller.position.inSeconds.toDouble(),
                            max: controller.duration.inSeconds.toDouble(),
                            onChanged: (value) {
                              controller.seekTo(
                                Duration(seconds: value.toInt()),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
