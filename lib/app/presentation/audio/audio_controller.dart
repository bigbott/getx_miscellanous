import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../../common/audio_player/audio_player_interface.dart';
import 'dart:async';

class AudioController extends GetxController {
  final AudioPlayerInterface audioPlayer;
  late final ScrollController scrollController;
  final GlobalKey textKey = GlobalKey();
  
  AudioController({required this.audioPlayer});

  bool _isPlaying = false;
  Duration _position = Duration.zero;
  Duration _duration = Duration.zero;
  double _totalTextHeight = 0.0;

  bool get isPlaying => _isPlaying;
  Duration get position => _position;
  Duration get duration => _duration;

  @override
  void onInit() {
    super.onInit();
    scrollController = ScrollController();
    _setupStreams();
    _initAudio();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _measureTextHeight();
    });
  }

  Future<void> _initAudio() async {
    _duration = await audioPlayer.getDuration();
    update();
  }

  void _measureTextHeight() {
    final RenderBox? renderBox = 
        textKey.currentContext?.findRenderObject() as RenderBox?;
    if (renderBox != null) {
      _totalTextHeight = renderBox.size.height;
      print(_totalTextHeight);
    }
  }

  void _setupStreams() {
    audioPlayer.getPlayingStream().listen((playing) {
      _isPlaying = playing;
      update();
    });

    audioPlayer.getPositionStream().listen((pos) {
      _position = pos;
      _updateScroll();
      update();
    });

    audioPlayer.getDurationStream().listen((duration) {
      _duration = duration;
      print('duration ' + _duration.inSeconds.toString());
      update();
    });
  }

  double lastScrollPosition = 0;
  void _updateScroll() {
    if (!_isPlaying || _totalTextHeight == 0) return;
    
    final progress = _position.inMilliseconds / _duration.inMilliseconds;
    final scrollPosition = _totalTextHeight * progress;

    if (scrollPosition - lastScrollPosition < 150) {
      return;
    }
    
    scrollController.animateTo(
      scrollPosition,
      duration: const Duration(milliseconds: 1700),
      curve: Curves.linear,
    );
    lastScrollPosition = scrollPosition;
  }

  Future<void> togglePlayPause() async {
    if (_isPlaying) {
      await audioPlayer.pause();
    } else {
      await audioPlayer.play('audio/text.mp3');
    }
  }

  Future<void> seekTo(Duration position) async {
    try {
      // First pause to make seeking more reliable
      final wasPlaying = _isPlaying;
      if (wasPlaying) {
        await audioPlayer.pause();
      }

      // Add timeout to prevent hanging
      await audioPlayer.setPosition(position)
          .timeout(const Duration(seconds: 3), onTimeout: () {
        throw TimeoutException('Seek operation timed out');
      });

      // Resume if it was playing before
      if (wasPlaying) {
        await audioPlayer.play('audio/text.mp3');
      }
    } catch (e) {
      print('Error seeking: $e');
      // Optionally show error to user
      Get.snackbar(
        'Error',
        'Failed to seek to position',
      // snackPosition: SnackPosition.BOTTOM,
      );
      audioPlayer.stop();
      _isPlaying = false;
    }
  }

  @override
  void onClose() {
    scrollController.dispose();
    audioPlayer.dispose();
    super.onClose();
  }
}
