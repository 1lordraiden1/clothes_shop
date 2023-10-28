import 'package:clothes_store/providers/cart_provider.dart';
import 'package:flutter/material.dart';

import '../component/component.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    final provider = CartProvider.of(context);
    final finalList = provider.cart;

    _buildProductQuantity(IconData icon, int i) {
      return GestureDetector(
        onTap: () {
          setState(() {
            icon == Icons.add
                ? provider.incrementQuantity(i)
                : provider.decrementQuantity(i);
          });
        },
        child: Container(
          decoration: BoxDecoration(shape: BoxShape.circle, color: mainColor),
          child: Icon(
            icon,
            size: 15,
          ),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("Cart"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: finalList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    title: Text(
                      finalList[index].name,
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      '\$${finalList[index].price}',
                      overflow: TextOverflow.ellipsis,
                    ),
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage(finalList[index].image),
                      backgroundColor: lowColor,
                    ),
                    trailing: Column(
                      children: [
                        _buildProductQuantity(Icons.add, index),
                        Text(finalList[index].quantity.toString()),
                        _buildProductQuantity(Icons.remove, index)
                      ],
                    ),
                    tileColor: lowColor,
                  ),
                );
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            alignment: Alignment.center,
            width: double.infinity,
            height: 100,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10), topRight: Radius.circular(10)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "\$${provider.getTotalPrice()}",
                  style: const TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                ),
                ElevatedButton.icon(
                  onPressed: () {},
                  style: const ButtonStyle(),
                  label: const Text("Check Out"),
                  icon: const Icon(Icons.shopping_cart_checkout),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
