import 'package:fake_store/core/base/state/base_state.dart';
import 'package:fake_store/core/base/view/base_view.dart';
import 'package:fake_store/features/fav/fav_cubit.dart';
import 'package:flutter/material.dart';

class FavView extends StatefulWidget {
  const FavView({super.key});

  @override
  State<FavView> createState() => _FavViewState();
}

class _FavViewState extends BaseState<FavView> {
  final FavCubit viewModel = FavCubit();
  @override
  Widget build(BuildContext context) {
    return BaseView<FavCubit>(
      viewModel: viewModel,
      builder: (context) {
        return const Scaffold(
          body: Center(
            child: Text('Favourite'),
          ),
        );
      },
    );
  }
}
