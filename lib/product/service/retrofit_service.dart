// ignore_for_file: depend_on_referenced_packages

import 'package:dio/dio.dart';
import 'package:fake_store/core/constants/app_constants.dart';
import 'package:fake_store/product/model/response/item.dart';
import 'package:retrofit/retrofit.dart';

part 'retrofit_service.g.dart';

@RestApi(baseUrl: ApplicationConstants.BASE_URL)
abstract class RetrofitService {
  factory RetrofitService(Dio dio, {String baseUrl}) = _RetrofitService;

  @GET('/products/categories')
  Future<HttpResponse<List<String>>> getCategories();

  @GET('/products')
  Future<HttpResponse<List<Item>>> getAllProducts();
}