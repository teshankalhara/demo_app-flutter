import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/product_cart/product_cart.dart';

class CategorySet extends StatelessWidget {
  const CategorySet({super.key});

  @override
  Widget build(BuildContext context) {
    final products = List.generate(
      4,
      (index) => const ProductCart(
        title: "New Item",
        decoration: "Hello, I'm a new item! Please buy me!",
        titleColor: Colors.black,
        descriptionColor: Colors.black87,
        productBoxColor: Colors.white,
        smallBoxColor: Colors.grey,
      ),
    );

    return Column(
      children: List.generate(2, (rowIndex) {
        return Container(
          margin: const EdgeInsets.only(bottom: 15),
          padding: const EdgeInsets.only(bottom: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              products[rowIndex * 2],
              const SizedBox(width: 10),
              products[rowIndex * 2 + 1],
            ],
          ),
        );
      }),
    );
  }
}
