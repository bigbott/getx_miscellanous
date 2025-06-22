abstract interface class AudioPlayerInterface {
  Future<void> play(String assetPath);
  Future<void> pause();
  Future<void> stop();
  Future<Duration> getPosition();
  Future<void> setPosition(Duration position);
  Future<void> dispose();
  Stream<Duration> getPositionStream();
  Stream<bool> getPlayingStream();
  Future<Duration> getDuration();
  Stream<Duration> getDurationStream();
}