import 'package:fake_store/product/components/drawer/custom_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BaseView<T extends Cubit> extends StatelessWidget {
  final T viewModel;
  final Widget Function(BuildContext context) builder;

  const BaseView({
    Key? key,
    required this.viewModel,
    required this.builder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => viewModel,
      child: Scaffold(
        // bottom: false,
        appBar: AppBar(),
        drawer: const CustomDrawer(),
        body: builder(context),
      ),
    );
    // return builder(context, viewModel);
  }
}
