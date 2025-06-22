import 'package:get/get.dart';
import 'package:getx_miscellanous/app/common/audio_player/audio_player_just_audio.dart';
import '../../common/audio_player/audio_player_audioplayers.dart';
import 'audio_controller.dart';

class AudioBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(AudioController(
          //audioPlayer: AudioPlayerAudioplayers(),
            audioPlayer: AudioPlayerJustAudio()
        ));
  }
}
