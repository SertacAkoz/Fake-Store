import 'package:dio/dio.dart';
import 'package:fake_store/core/extensions/dio_error_extensions.dart';

import '../../core/utils/resource.dart';
import '../base/service/i_item.dart';
import '../model/response/item.dart';


abstract class IItemRepository {
  Future<Resource<List<Item>>> getAllProducts();
}

class ItemRepository extends IItem implements IItemRepository {
  ItemRepository({required super.service});
  
  @override
  Future<Resource<List<Item>>> getAllProducts() async {
    try {
      final response = await service.getAllProducts();
      return Resource.success(response.data);
    } on DioError catch (e) {
      return Resource.error(e.shortErrorMessage);
    }
  }

}
