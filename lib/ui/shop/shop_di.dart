import 'package:cupcake/data/shop/shop_data_source.dart';
import 'package:cupcake/data/shop/shop_repository.dart';
import 'package:cupcake/data/shop/shop_repository_impl.dart';
import 'package:cupcake/ui/shop/shop_controller.dart';
import 'package:get/get.dart';

class ShopDi {
  static void bind() {
    ShopDataSource shopDataSource = Get.put(ShopDataSource());
    ShopRepository shopRepository = Get.put(ShopRepositoryImpl(Get.find()));
    ShopController shopController = Get.put(ShopController(Get.find()));
  }
}
