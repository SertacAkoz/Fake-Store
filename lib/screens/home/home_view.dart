import 'package:fake_store/core/base/view/base_view.dart';
import 'package:fake_store/product/base/base_props.dart';
import 'package:fake_store/screens/home/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget with BaseProps{
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseView<HomeCubit>(
      viewModel: HomeCubit(),
      builder: (context, viewModel) {
        return Scaffold(
          body: BlocConsumer<HomeCubit, HomeState>(
            listener: (context, state) {},
            builder: (context, state) {
              if (state is HomeInitial) {
                return _buildLoading();
              } else {
                return Container();
              }
            },
          ),
        );
      },
    );
  }

  Center _buildLoading() {
    return const Center(child: CircularProgressIndicator());
  }
}
