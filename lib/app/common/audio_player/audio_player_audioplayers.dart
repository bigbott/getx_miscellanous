import 'package:audioplayers/audioplayers.dart';
import 'audio_player_interface.dart';

class AudioPlayerAudioplayers implements AudioPlayerInterface {
  final AudioPlayer _audioPlayer = AudioPlayer();
  String? _currentAsset;

  @override
  Future<void> play(String assetPath) async {
    if (_currentAsset != assetPath) {
      _currentAsset = assetPath;
      await _audioPlayer.setSource(AssetSource(assetPath));
    }
    await _audioPlayer.resume();
  }

  @override
  Future<void> pause() async {
    await _audioPlayer.pause();
  }

  @override
  Future<void> stop() async {
    await _audioPlayer.stop();
  }

  @override
  Future<Duration> getPosition() async {
    return await _audioPlayer.getCurrentPosition() ?? Duration.zero;
  }

  @override
  Future<void> setPosition(Duration position) async {
    await _audioPlayer.seek(position);
  }

  @override
  Future<void> dispose() async {
    await _audioPlayer.dispose();
  }

  @override
  Stream<Duration> getPositionStream() {
    return _audioPlayer.onPositionChanged;
  }

  @override
  Stream<bool> getPlayingStream() {
    return _audioPlayer.onPlayerStateChanged
        .map((state) => state == PlayerState.playing);
  }

 @override
  Future<Duration> getDuration() async {
    return await _audioPlayer.getDuration() ?? Duration.zero;
  }

  @override
  Stream<Duration> getDurationStream() {
    return _audioPlayer.onDurationChanged;
  }
}
 