import 'package:clothes_store/model/my_products.dart';
import 'package:clothes_store/pages/pages_component/product_card.dart';
import 'package:flutter/material.dart';
import 'package:clothes_store/pages/pages_component/pages_component.dart';

import '../component/component.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

int isSelected = 0;

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Temon We Bomba"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            const Text(
              "Our Products",
              style: TextStyle(
                fontSize: 27,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildProductCategory(0, "New"),
                _buildProductCategory(1, "T-Shirts"),
                _buildProductCategory(2, "Pants"),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: _buildAllProducts(),
            )
          ],
        ),
      ),
    );
  }
}

_buildProductCategory(int index, String name) => Container(
      height: height * 4,
      width: width * 10,
      margin: const EdgeInsets.only(top: 10, right: 10),
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: isSelected == index ? mainColor : lowColor,
          borderRadius: BorderRadius.circular(8)),
      child: Text(
        name,
        style: TextStyle(color: Colors.white),
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
        return ProductCard(product: allProducts);
      },
    );

_buildPants()=>GridView.builder(
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
        return ProductCard(product: tshirtsList);
      },
    );
