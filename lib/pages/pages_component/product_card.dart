import 'package:clothes_store/component/component.dart';
import 'package:clothes_store/providers/favorite_provider.dart';
import 'package:flutter/material.dart';

import '../../model/product.dart';

class ProductCard extends StatefulWidget {
  const ProductCard({super.key, required this.product});
  final Product product;
  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    final provider = FavoriteProvider.of(context);
    return Container(
      width: MediaQuery.of(context).size.width / 2,
      height: 100,
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: Colors.grey.withOpacity(0.1),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: () => provider.toggleFavorite(widget.product),
                child: Icon(
                  provider.isExist(widget.product)
                      ? Icons.favorite
                      : Icons.favorite_border_outlined,
                  color: Colors.red,
                ),
              ),
            ],
          ),
          SizedBox(
            height: height * 15,
            width: width * 15,
            child: Image.asset(
              widget.product.image,
              opacity: const AlwaysStoppedAnimation(0.8),
              fit: BoxFit.cover,
            ),
          ),
          Text(widget.product.name),
          Text("\$${widget.product.price.toStringAsFixed(2)}"),
        ],
      ),
    );
  }
}
