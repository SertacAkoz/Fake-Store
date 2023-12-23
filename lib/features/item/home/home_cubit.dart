// ignore_for_file: depend_on_referenced_packages

import 'package:meta/meta.dart';

import '../../../core/base/view_model/base_view_model.dart';
import '../../../product/model/response/item.dart';
import '../../../product/repositories/item_repository.dart';

part 'home_state.dart';

class HomeCubit extends BaseViewModel<HomeState> {
  final ItemRepository _repository;
  HomeCubit({
    required ItemRepository repository,
  })  : _repository = repository,
        super(HomeInitial());

  Future<void> getAllProducts() async {
    emit(HomeLoading());
    final products = await _repository.getAllProducts();
    if (products.state) {
      emit(HomeSuccess(products: products.data!));
    } else {
      emit(HomeError(message: products.message ?? 'Bir sorun oluştu.'));
    }
  }
}
