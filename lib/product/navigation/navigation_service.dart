import 'package:flutter/cupertino.dart';

abstract class INavigationService {
  Future<T?> navigateToPage<T>({required String path, Object? data});
  Future<T?> navigateToPageClear<T>({required String path, Object? data});
}

class NavigationService implements INavigationService {
  static final NavigationService _instance = NavigationService._init();

  static NavigationService get instance => _instance;

  NavigationService._init();

  final GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Future<T?> navigateToPage<T>({required String path, Object? data}) async {
    return await navigatorKey.currentState?.pushNamed(path, arguments: data);
  }

  @override
  Future<T?> navigateToPageClear<T>({required String path, Object? data}) async {
    return await navigatorKey.currentState?.pushNamedAndRemoveUntil(path, (Route<dynamic> route) => false, arguments: data);
  }
}
