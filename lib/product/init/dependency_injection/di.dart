import 'package:dio/dio.dart';
import 'package:fake_store/product/repositories/item_repository.dart';
import 'package:fake_store/product/service/retrofit_service.dart';
import 'package:get_it/get_it.dart';


final getIt = GetIt.instance;

class DependecyInjection {
  final _dio = Dio(BaseOptions(headers: {'BCode-Token': '7ce3b1a41d641dd2f5d70fa846111ed7bb53a80d1f5f20083cd6996bda763935'}));
  
  DependecyInjection._() {
    _provideServices();
    _provideRepositories();
  }

  static final instance = DependecyInjection._();

  void _provideServices() {
    // getIt.registerSingleton<RetrofitService>(RetrofitService(_dio));
    getIt.registerLazySingleton<RetrofitService>(() => RetrofitService(_dio));
  }

  void _provideRepositories() {
    // getIt.registerSingleton<HomeRepository>(
    //   HomeRepository(service: getIt.get<RetrofitService>()),
    // );
    getIt.registerLazySingleton<ItemRepository>(() => ItemRepository(service: getIt.get<RetrofitService>()));
  }
}
