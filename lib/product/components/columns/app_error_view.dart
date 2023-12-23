import 'package:flutter/material.dart';

import 'package:fake_store/core/components/columns/error_view.dart';

class AppErrorView extends StatelessWidget {
  final String errorText;
  const AppErrorView({
    Key? key,
    required this.errorText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ErrorView(child: Text(errorText));
  }
}
