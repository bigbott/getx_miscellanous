import 'package:just_audio/just_audio.dart';
import 'audio_player_interface.dart';

class AudioPlayerJustAudio implements AudioPlayerInterface {
  final AudioPlayer _audioPlayer = AudioPlayer();
  String? _currentAsset;

  @override
  Future<void> play(String assetPath) async {
    assetPath = 'assets/$assetPath';
    if (_currentAsset != assetPath) {
      _currentAsset = assetPath;
      await _audioPlayer.setAsset(assetPath);
    }
    await _audioPlayer.play();
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
    return _audioPlayer.position;
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
    return _audioPlayer.positionStream;
  }

  @override
  Stream<bool> getPlayingStream() {
    return _audioPlayer.playingStream;
  }

  @override
  Future<Duration> getDuration() async {
    return _audioPlayer.duration ?? Duration.zero;
  }

  @override
  Stream<Duration> getDurationStream() {
    return _audioPlayer.durationStream
        .where((duration) => duration != null)
        .map((duration) => duration!);
  }
}
