import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/category_cart/category_cart.dart';

class CategorySet extends StatelessWidget {
  const CategorySet({super.key});

  @override
  Widget build(BuildContext context) {
    final products = List.generate(
      10,
      (index) => const CategoryCart(
        title: "New Item",
        decoration: "Hello, I'm a new item! Please buy me!",
        titleColor: Colors.black,
        descriptionColor: Colors.black87,
        productBoxColor: Colors.white,
        smallBoxColor: Colors.grey,
      ),
    );

    return Column(
      children: List.generate(
        (products.length / 2).ceil(), // Adjusted row count
        (rowIndex) {
          int firstIndex = rowIndex * 2;
          int secondIndex = firstIndex + 1;
          return Container(
            margin: const EdgeInsets.only(bottom: 15),
            padding: const EdgeInsets.only(bottom: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                products[firstIndex],
                if (secondIndex < products.length) ...[
                  const SizedBox(width: 10),
                  products[secondIndex],
                ],
              ],
            ),
          );
        },
      ),
    );
  }
}
