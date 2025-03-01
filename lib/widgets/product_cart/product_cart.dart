import 'package:flutter/material.dart';

class ProductCart extends StatelessWidget {
  final String title;
  final String decoration;
  final Color titleColor;
  final Color descriptionColor;
  final Color productBoxColor;
  final Color smallBoxColor;

  const ProductCart({
    super.key,
    required this.title,
    required this.decoration,
    required this.titleColor,
    required this.descriptionColor,
    required this.productBoxColor,
    required this.smallBoxColor,
  });

  final double productCardWidth = 190;
  final double productCardHeight = 220;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: productCardWidth,
      height: productCardHeight,
      decoration: BoxDecoration(
        color: productBoxColor,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                color: titleColor,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              decoration,
              style: TextStyle(
                color: descriptionColor,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: 15),
            Container(
              width: 180,
              height: 100,
              decoration: BoxDecoration(
                color: smallBoxColor,
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
