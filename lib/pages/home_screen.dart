import 'package:clothes_store/model/my_products.dart';
import 'package:clothes_store/pages/details_screen.dart';
import 'package:clothes_store/pages/pages_component/product_card.dart';
import 'package:flutter/material.dart';

import '../component/component.dart';
import 'favorate_sceen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

int isSelected = 0;

int categoryIndex = 0;

class _HomeScreenState extends State<HomeScreen> {
  _buildProductCategory(int index, String name) => GestureDetector(
        onTap: () => setState(() => isSelected = index),
        child: Container(
          height: height * 4,
          width: width * 10,
          margin: const EdgeInsets.only(top: 10, right: 10),
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: isSelected == index ? mainColor : lowColor,
              borderRadius: BorderRadius.circular(8)),
          child: Text(
            name,
            style: const TextStyle(color: Colors.white),
          ),
        ),
      );

  _buildAllProducts() => GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: (1.0 / 1.4),
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
        ),
        scrollDirection: Axis.vertical,
        itemCount: MyProducts.allProducts.length,
        itemBuilder: (context, index) {
          final allProducts = MyProducts.allProducts[index];
          return GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailsScreen(product: allProducts),
              ),
            ),
            child: ProductCard(product: allProducts),
          );
        },
      );

  _buildPants() => GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: (1.0 / 1.4),
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
        ),
        scrollDirection: Axis.vertical,
        itemCount: MyProducts.pants.length,
        itemBuilder: (context, index) {
          final pantsList = MyProducts.pants[index];
          return GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailsScreen(product: pantsList),
              ),
            ),
            child: ProductCard(product: pantsList),
          );
        },
      );

  _buildTShirts() => GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: (1.0 / 1.4),
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
        ),
        scrollDirection: Axis.vertical,
        itemCount: MyProducts.tshirts.length,
        itemBuilder: (context, index) {
          final tshirtsList = MyProducts.tshirts[index];
          return GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailsScreen(product: tshirtsList),
              ),
            ),
            child: ProductCard(product: tshirtsList),
          );
        },
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Get Dressed"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const FavoriteScreen(),
              ),
            ),
            icon: const Icon(Icons.favorite_border_outlined),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Our Products",
              style: TextStyle(
                fontSize: 27,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                _buildProductCategory(0, "All"),
                _buildProductCategory(1, "T-Shirts"),
                _buildProductCategory(2, "Pants"),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: isSelected == 0
                  ? _buildAllProducts()
                  : isSelected == 1
                      ? _buildTShirts()
                      : _buildPants(),
            )
          ],
        ),
      ),
    );
  }
}
