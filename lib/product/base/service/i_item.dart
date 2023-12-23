import 'package:dio/dio.dart';

import '../../../core/extensions/dio_error_extensions.dart';
import '../../../core/utils/resource.dart';
import '../../service/retrofit_service.dart';

abstract class IItem {
  RetrofitService service;
  IItem({
    required this.service,
  });

  Future<Resource<List<String>>> getCategories() async{
    try {
      final response = await service.getCategories();
      return Resource.success(response.data);

    } on DioError catch (e) {
      return Resource.error(e.shortErrorMessage);
    }
  }
}
