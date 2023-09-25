import 'package:clothes_store/component/component.dart';
import 'package:flutter/material.dart';

import '../model/product.dart';

class DetailsScreen extends StatelessWidget {
  DetailsScreen({super.key, required this.product});

  Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Details",
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: width * 22,
                height: height * 22,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: mainColor,
                ),
                child: Image.asset(
                  product.image,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
          SizedBox(
            height: height * 3,
          ),
          Container(
            padding: const EdgeInsets.all(20.0),
            width: double.infinity,
            height: 400,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
