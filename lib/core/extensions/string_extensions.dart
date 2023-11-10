import 'package:easy_localization/easy_localization.dart';

import '../constants/regex_constants.dart';


extension StringLocalization on String {
  String get locale => this.tr();
}

extension StringValidator on String {
  // TODO: Constatns...
  String? get isValidEmail {
    return RegExp(RegexConstants.instance!.emailRegex).hasMatch(this) ? null : "Email adress is not match.";
  }

  String? get isValidUserName {
    return RegExp(RegexConstants.instance!.userNameRegex).hasMatch(this)
        ? null
        : "The value has a minimum of four characters.";
  }

  String? get isValidPassword {
    return RegExp(RegexConstants.instance!.passwordRegex).hasMatch(this)
        ? null
        : "The value has a minimum of six characters.";
  }
}