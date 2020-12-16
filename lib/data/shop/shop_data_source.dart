import 'dart:math';

import 'package:cupcake/data/shop/model/product.dart';

class ShopDataSource {
  Future<List<Product>> getProducts() {
    return Future.value([
      Product(
          id: 1,
          name: "Carrot",
          price: Random().nextInt(10).toDouble(),
          image: "assets/images/carrot_cupcake.png",
          description:
              "Walnut-studded carrot cake with cinnamon cream cheese frosting"),
      Product(
          id: 1,
          name: "Red Velvet",
          price: Random().nextInt(10).toDouble(),
          image: "assets/images/red_velvet_cupcake.png",
          description:
              "A chocolate sponge, coloured naturally with beetroot and topped off with cream cheese."),
      Product(
          id: 1,
          name: "Mint Chip",
          price: Random().nextInt(10).toDouble(),
          image: "assets/images/mint_chip_cupcake.png",
          description:
              "Homemade chocolate cupcakes topped with thick & creamy mint chocolate chip frosting."),
      Product(
          id: 1,
          name: "Pink Strawberry",
          price: Random().nextInt(10).toDouble(),
          image: "assets/images/pink_strawberry_cupcake.png",
          description:
              "A fluffy strawberry cupcake with strawberry buttercream frosting and chocolate syrup. "),
      Product(
          id: 1,
          name: "Marshmallow",
          price: Random().nextInt(10).toDouble(),
          image: "assets/images/marshmallow_cupcake.png",
          description:
              "A super chocolatey cupcake base with a soft marshmallowy buttercream topping."),
      Product(
          id: 1,
          name: "Dark Chocolate",
          price: Random().nextInt(10).toDouble(),
          image: "assets/images/dark_chocolate_cupcake.png",
          description:
              "Belgian chocolate cake with sweet chocolate frosting and cheery."),
      Product(
          id: 1,
          name: "Salty Caramel",
          price: Random().nextInt(10).toDouble(),
          image: "assets/images/salty_caramel_cupcake.png",
          description:
              "Caramel cake with a buttery caramel cream cheese frosting topped with fleur de sel."),
      Product(
          id: 1,
          name: "Gluten Free Velvet",
          price: Random().nextInt(10).toDouble(),
          image: "assets/images/gluten_free_velvet_cupcake.png",
          description:
              "A gluten free twist on our classic red velvet, topped off with cream cheese."),
      Product(
          id: 1,
          name: "Cinnamon",
          price: Random().nextInt(10).toDouble(),
          image: "assets/images/cinnamon_cupcake.png",
          description:
              "Lightly spiced buttermilk cake with cinnamon cream cheese frosting with cinnamon sugar."),
      Product(
          id: 1,
          name: "Totally nuts",
          price: Random().nextInt(10).toDouble(),
          image: "assets/images/totally_nuts_cupcake.png",
          description:
              "A sweet hazelnut paste with nutella butter cream and chopped hazelnuts on the top."),
      Product(
          id: 1,
          name: "Pink Vanilla",
          price: Random().nextInt(10).toDouble(),
          image: "assets/images/pink_vanilla_cupcake.png",
          description:
              "Soft, fluffy, and extra moist creamy vanilla buttercream with extra sprinkles")
    ]);
  }
}
