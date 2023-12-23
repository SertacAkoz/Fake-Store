class DurationConstants{
  static DurationConstants? _instance;
  static DurationConstants get instance {
    _instance ??= DurationConstants._init();

    return _instance!;
  }

  DurationConstants._init();

  Duration get lowDuration => const Duration(milliseconds: 100);
  Duration get mediumDuration => const Duration(milliseconds: 500);
  Duration get bigDuration => const Duration(seconds: 1);
}