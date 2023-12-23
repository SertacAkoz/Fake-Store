import 'package:easy_localization/easy_localization.dart';
import 'package:fake_store/core/extensions/context_extensions.dart';
import 'package:fake_store/product/init/dependency_injection/di.dart';
import 'package:flutter/material.dart';

import 'core/constants/app_constants.dart';
import 'core/init/language/language_manager.dart';
import 'product/navigation/navigation_enums.dart';
import 'product/navigation/navigation_routes.dart';
import 'product/navigation/navigation_service.dart';
import 'product/theme/custom_light_theme.dart';

void main() async {

  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  // Dependecy Inhection Trigger for Create Classes
  DependecyInjection.instance;

  runApp(EasyLocalization(
    supportedLocales: LanguageManager.instance.supportedLocales,
    path: ApplicationConstants.LANGUAGE_ASSETS_PATH,
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      onGenerateRoute: NavigationRoute.instance.generateRoute,
      navigatorKey: NavigationService.instance.navigatorKey,
      theme: CustomLightTheme().themeData,
      initialRoute: NavigationEnums.home.rawValue,
      // home: Scaffold(
      //   appBar: AppBar(
      //     title: const Text('Material App Bar'),
      //   ),
      //   body: const Center(
      //     child: Text('Hello World'),
      //   ),
      // ),
    );
  }
}
