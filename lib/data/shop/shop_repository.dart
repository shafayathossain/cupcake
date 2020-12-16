import 'package:cupcake/data/shop/model/product.dart';

abstract class ShopRepository {
  Future<List<Product>> getProducts();
}