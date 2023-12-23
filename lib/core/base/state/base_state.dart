import 'package:flutter/material.dart';

abstract class BaseState<T extends StatefulWidget> extends State<T> {
  double screenHeight(double value) => MediaQuery.of(context).size.height * value;
  double screenWidth(double value) => MediaQuery.of(context).size.width * value;

  void init({required Function() make}) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      make();
    });
  }
}
