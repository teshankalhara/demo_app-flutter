import 'package:flutter/material.dart';

class ProductCart extends StatelessWidget {
  final String title;
  final String amount;
  final String unit;
  final String price;
  final Color titleColor;
  final Color amountColor;
  final Color priceColor;
  final Color productBoxColor;
  final Color addBtnColor;

  const ProductCart({
    super.key,
    required this.title,
    required this.amount,
    required this.unit,
    required this.price,
    required this.titleColor,
    required this.amountColor,
    required this.priceColor,
    required this.productBoxColor,
    required this.addBtnColor,
  });

  final double productCardWidth = 190;
  final double productCardHeight = 220;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: productCardWidth,
      height: productCardHeight,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            // ignore: deprecated_member_use
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 10),
          Container(
            width: 170,
            height: 100,
            decoration: BoxDecoration(
              color: productBoxColor,
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 20,
                        color: titleColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "$amount $unit",
                      style: TextStyle(
                        fontSize: 18,
                        color: amountColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      price,
                      style: TextStyle(
                        fontSize: 22,
                        color: priceColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(color: addBtnColor, width: 4),
                  ),
                  child: Center(
                    child: Icon(Icons.add, color: addBtnColor, size: 40),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
