import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BaseView<T extends Cubit> extends StatelessWidget {
  final T viewModel;
  final Widget Function(BuildContext context, T viewModel) builder;

  const BaseView({
    Key? key,
    required this.viewModel,
    required this.builder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => viewModel,
      child: builder(context, viewModel),
    );
    // return builder(context, viewModel);
  }
}