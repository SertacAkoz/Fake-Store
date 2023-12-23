part of 'home_cubit.dart';

@immutable
abstract class HomeState {}

class HomeInitial extends HomeState {}

class HomeSuccess extends HomeState {
  final List<Item> products;
  HomeSuccess({
    required this.products,
  });
}

class HomeError extends HomeState {
  final String message;
  HomeError({
    required this.message,
  });
}

class HomeLoading extends HomeState {}
