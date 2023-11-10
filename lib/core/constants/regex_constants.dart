class RegexConstants {
  static RegexConstants? _instance;
  static RegexConstants? get instance {
    _instance ??= RegexConstants._init();
    return _instance;
  }

  RegexConstants._init();
  final String emailRegex =
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";
  final String passwordRegex = r"^.{6,}$";
  final String userNameRegex = r"^.{4,}$";
}
