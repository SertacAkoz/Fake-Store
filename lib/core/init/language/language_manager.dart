import 'package:flutter/material.dart';

import 'locales.dart';

class LanguageManager{
  static final instance = LanguageManager._();
  LanguageManager._();

  final List<Locale> supportedLocales = [
    Locales.tr.locale,
    Locales.en.locale,
  ];

}