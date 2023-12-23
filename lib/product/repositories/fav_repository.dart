import 'package:fake_store/product/base/service/i_item.dart';
import 'package:fake_store/product/model/response/item.dart';

abstract class IFavRepository{
  Future<List<Item>> getFavList();
}

class FavRepository extends IItem implements IFavRepository{
  FavRepository({required super.service});
  
  @override
  Future<List<Item>> getFavList() {
    // TODO: implement getFavList
    throw UnimplementedError();
  }

}