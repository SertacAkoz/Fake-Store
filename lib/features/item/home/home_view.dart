import 'package:fake_store/core/base/state/base_state.dart';
import 'package:fake_store/core/components/loading/loading_widget.dart';
import 'package:fake_store/product/init/dependency_injection/di.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/base/view/base_view.dart';
import '../../../product/base/base_props.dart';
import '../../../product/components/columns/app_error_view.dart';
import '../../../product/repositories/item_repository.dart';
import 'components/home_success.dart';
import 'home_cubit.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends BaseState<HomeView> with BaseProps {
  // late HomeCubit viewModel;
  final HomeCubit viewModel = HomeCubit(repository: getIt.get<ItemRepository>());

  @override
  Widget build(BuildContext context) {
    return BaseView<HomeCubit>(
      viewModel: viewModel,
      builder: (context) {
        return Scaffold(
          body: BlocConsumer<HomeCubit, HomeState>(
            listener: (context, state) {},
            builder: (context, state) {
              if (state is HomeInitial) {
                init(make: () {
                  viewModel.getAllProducts();
                });
                return const LoadingWidget();
              } else if (state is HomeLoading) {
                return const LoadingWidget();
              } else if (state is HomeSuccess) {
                return HomeSuccessView(products: state.products);
              } else {
                final result = state as HomeError;
                return AppErrorView(errorText: result.message);
              }
            },
          ),
        );
      },
    );
  }
}
