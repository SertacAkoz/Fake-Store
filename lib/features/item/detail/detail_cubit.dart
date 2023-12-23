// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:fake_store/product/repositories/item_repository.dart';
import 'package:meta/meta.dart';

part 'detail_state.dart';

class DetailCubit extends Cubit<DetailState> {
  final ItemRepository _repository;
  DetailCubit({required ItemRepository repository})
      : _repository = repository,
        super(DetailInitial());
}
