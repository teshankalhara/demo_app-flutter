import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/product_cart/product_cart.dart';

class ProductSet extends StatelessWidget {
  const ProductSet({super.key});

  @override
  Widget build(BuildContext context) {
    final products = List.generate(
      4,
      (index) => const ProductCart(
        title: 'Sample Title',
        amount: '1',
        unit: 'kg',
        price: '100',
        titleColor: Colors.black,
        amountColor: Colors.black,
        priceColor: Colors.black,
        productBoxColor: Colors.blueAccent,
        addBtnColor: Colors.blueAccent,
      ),
    );
    return Column(
      children: List.generate((products.length / 2).ceil(), (rowIndex) {
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
                SizedBox(width: 10),
                products[secondIndex],
              ],
            ],
          ),
        );
      }),
    );
  }
}
