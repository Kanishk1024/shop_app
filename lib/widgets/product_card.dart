import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String title;
  final double price;
  final String image;
  final Color backColor;
  const ProductCard({
    super.key,
    required this.title,
    required this.price,
    required this.image,
    required this.backColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: backColor,
          borderRadius: const BorderRadius.all(Radius.circular(30))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(height: 5),
          Text(
            "\$$price",
            style: Theme.of(context).textTheme.bodySmall,
          ),
          const SizedBox(height: 8),
          Center(
            child: Image(
              image: AssetImage(image),
              height: 175,
            ),
          )
        ],
      ),
    );
  }
}
