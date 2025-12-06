class MemorySettingsService {
  MemorySettingsService._();
  static final _instance = MemorySettingsService._();
  factory MemorySettingsService() {
    return _instance;
  }

  bool bgImagesCached = false;
}
