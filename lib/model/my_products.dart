import 'package:clothes_store/model/product.dart';

class MyProducts {
  static List<Product> allProducts = [
    Product(
      id: 1,
      name: "Nike T-Shirt White",
      category: "T-Shirt",
      image:
          "https://www.footlocker.com.eg/assets/styles/FootLocker/image-thumb__94422__product_zoom_large_800x800/317344050080_01.jpg",
      description: "White T-Shirt from Nike with Nike icon",
      price: 200.00,
      quantity: 1,
    ),
    Product(
      id: 2,
      name: "White Cotton T-Shirt",
      category: "T-Shirt",
      image:
          "https://www.footlocker.com.eg/assets/styles/FootLocker/image-thumb__94423__product_zoom_large_800x800/317344050080_02.jpg",
      description: "White T-Shirt made from cotton",
      price: 180.00,
      quantity: 1,
    ),
  ];
}
