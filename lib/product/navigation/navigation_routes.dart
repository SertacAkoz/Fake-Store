import 'package:fake_store/product/navigation/animation/fade_navigate.dart';
import 'package:flutter/material.dart';

import 'navigation_enums.dart';

class NavigationRoute {
  Route<dynamic> generateRoute(RouteSettings args) {
    switch (NavigationEnums.deafult.normalValue(args.name)) {
      case NavigationEnums.deafult:
        return _normalNavigate(Container()); // const SplashView()

      case NavigationEnums.home:
        return _normalNavigate(Container()); // ShopTabView()

      case NavigationEnums.login:
        return _fadeRouteNavigate(Container()); // AuthenticationTabView()

      default:
        throw Exception('$this not found');
    }
  }

  MaterialPageRoute _normalNavigate(Widget widget, {RouteSettings? settings, bool isFullScreen = false}) {
    return MaterialPageRoute(builder: (context) => widget, settings: settings, fullscreenDialog: isFullScreen);
  }

  PageRoute _fadeRouteNavigate(Widget widget, {RouteSettings? settings}) {
    return FadeRoute(page: widget, settings: settings);
  }
}