import 'package:cupcake/data/shop/model/product.dart';
import 'package:cupcake/data/shop/shop_data_source.dart';
import 'package:cupcake/data/shop/shop_repository.dart';

class ShopRepositoryImpl extends ShopRepository {
  ShopDataSource _shopDataSource;

  ShopRepositoryImpl(this._shopDataSource);

  @override
  Future<List<Product>> getProducts() {
    return _shopDataSource.getProducts();
  }
}
