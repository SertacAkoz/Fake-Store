// ignore_for_file: depend_on_referenced_packages, unused_import

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../core/base/view_model/base_view_model.dart';

part 'fav_state.dart';

class FavCubit extends BaseViewModel<FavState> {
  FavCubit() : super(FavInitial());
}
