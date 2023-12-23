import 'package:fake_store/features/fav/fav_view.dart';
import 'package:flutter/material.dart';

import '../../features/item/detail/detail_view.dart';
import '../../features/item/home/home_view.dart';
import 'animation/fade_navigate.dart';
import 'navigation_enums.dart';

class NavigationRoute {
  static final NavigationRoute _instance = NavigationRoute._init();

  static NavigationRoute get instance => _instance;

  NavigationRoute._init();

  Route<dynamic> generateRoute(RouteSettings args) {
    switch (NavigationEnums.deafult.normalValue(args.name)) {
      case NavigationEnums.deafult:
        return _normalNavigate(Container());

      case NavigationEnums.home:
        return _normalNavigate(const HomeView());

      case NavigationEnums.login:
        return _fadeRouteNavigate(Container());

      case NavigationEnums.favourite:
        return _fadeRouteNavigate(const FavView());

      case NavigationEnums.detail:
        return _fadeRouteNavigate(const DetailView());

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
