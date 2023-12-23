import 'package:fake_store/core/base/state/base_state.dart';
import 'package:fake_store/core/base/view/base_view.dart';
import 'package:fake_store/features/item/detail/detail_cubit.dart';
import 'package:flutter/material.dart';

import '../../../product/init/dependency_injection/di.dart';
import '../../../product/repositories/item_repository.dart';

class DetailView extends StatefulWidget {
  const DetailView({super.key});

  @override
  State<DetailView> createState() => _DetailViewState();
}

class _DetailViewState extends BaseState<DetailView> {
  
  final DetailCubit viewModel = DetailCubit(repository: getIt.get<ItemRepository>());

  @override
  Widget build(BuildContext context) {
    return BaseView<DetailCubit>(
      viewModel: viewModel,
      builder: (context) {
        return Container();
      },
    );
  }
}
