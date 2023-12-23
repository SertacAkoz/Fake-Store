enum NavigationEnums { home, login, favourite, detail, deafult }

extension NavigationConstantsValue on NavigationEnums {
  String get rawValue {
    switch (this) {
      case NavigationEnums.home:
        return '/home';
      case NavigationEnums.login:
        return '/login';
      case NavigationEnums.favourite:
        return '/favourite';
      case NavigationEnums.detail:
        return '/detail';
      case NavigationEnums.deafult:
        return '/deafult';
    }
  }

  NavigationEnums normalValue(String? val) {
    switch (val) {
      case '/':
        return NavigationEnums.deafult;
      case '/home':
        return NavigationEnums.home;
      case '/login':
        return NavigationEnums.login;
      case '/favourite':
        return NavigationEnums.favourite;
      case '/detail':
        return NavigationEnums.detail;
      default:
        throw Exception('$val not found in $this');
    }
  }
}
