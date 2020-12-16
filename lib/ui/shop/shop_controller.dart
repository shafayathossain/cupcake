import 'package:cupcake/data/shop/model/product.dart';
import 'package:cupcake/data/shop/shop_repository.dart';
import 'package:get/get.dart';

class ShopController extends GetxController {
  ShopRepository _shopRepository;
  RxList<Product> products = RxList([]);

  ShopController(this._shopRepository);

  void fetchProducts() async {
    var mProducts = await _shopRepository.getProducts();
    print(mProducts);
    products.removeRange(0, products.length);
    products.addAll(mProducts);
  }
}
