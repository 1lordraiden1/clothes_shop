import 'package:clothes_store/model/product.dart';

class MyProducts {
  static List<Product> allProducts = [
    Product(
      id: 1,
      name: "Nike T-Shirt White",
      category: "T-Shirt",
      image: "assets/images/nike_black_tshirt.jpg",
      description: "White T-Shirt from Nike with Nike icon",
      price: 200.00,
      quantity: 1,
    ),
    Product(
      id: 2,
      name: "White Cotton T-Shirt",
      category: "T-Shirt",
      image: "assets/images/nike_black_tshirt.jpg",
      description: "White T-Shirt made from cotton",
      price: 180.00,
      quantity: 1,
    ),
    Product(
      id: 3,
      name: "White Cotton T-Shirt",
      category: "T-Shirt",
      image: "assets/images/black_tshirt.jpg",
      description: "White T-Shirt made from cotton",
      price: 179.99,
      quantity: 0,
    ),
    Product(
      id: 5,
      name: "White Pants",
      category: "Pants",
      image: "assets/images/white_pants.jpeg",
      description: "white comfortable stretch pants ",
      price: 99.99,
      quantity: 2,
    ),
    Product(
      id: 5,
      name: "White Pants",
      category: "Pants",
      image: "assets/images/white_pants.jpeg",
      description: "white comfortable stretch pants ",
      price: 99.99,
      quantity: 0,
    ),
  ];
  static List<Product> tshirts = [
    Product(
      id: 1,
      name: "Nike T-Shirt White",
      category: "T-Shirt",
      image: "assets/images/nike_black_tshirt.jpg",
      description: "White T-Shirt from Nike with Nike icon",
      price: 200.00,
      quantity: 1,
    ),
    Product(
      id: 2,
      name: "White Cotton T-Shirt",
      category: "T-Shirt",
      image: "assets/images/nike_black_tshirt.jpg",
      description: "White T-Shirt made from cotton",
      price: 180.00,
      quantity: 1,
    ),
    Product(
      id: 3,
      name: "White Cotton T-Shirt",
      category: "T-Shirt",
      image: "assets/images/black_tshirt.jpg",
      description: "White T-Shirt made from cotton",
      price: 179.99,
      quantity: 0,
    ),
  ];
  static List<Product> pants = [
    Product(
      id: 5,
      name: "White Pants",
      category: "Pants",
      image: "assets/images/white_pants.jpeg",
      description: "white comfortable stretch pants ",
      price: 99.99,
      quantity: 2,
    ),
    Product(
      id: 5,
      name: "White Pants",
      category: "Pants",
      image: "assets/images/white_pants.jpeg",
      description: "white comfortable stretch pants ",
      price: 99.99,
      quantity: 0,
    ),
  ];
}
