import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final String title;
  final String description;
  final Color titleColor;
  final Color descriptionColor;
  final Color backgroundColor;
  final Color borderColor;
  final Color circleColor;

  const CategoryItem({
    super.key,
    required this.title,
    required this.description,
    required this.titleColor,
    required this.descriptionColor,
    required this.backgroundColor,
    required this.borderColor,
    required this.circleColor,
  });

  final double productCardWidth = 190;
  final double productCardHeight = 100;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      width: productCardWidth,
      height: productCardHeight,
      decoration: BoxDecoration(
        // ignore: deprecated_member_use
        color: backgroundColor,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: borderColor, width: 2),
        boxShadow: [
          BoxShadow(
            // ignore: deprecated_member_use
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 15,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 18,
                    color: titleColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Container(
                  width: 55,
                  height: 55,
                  decoration: BoxDecoration(
                    color: circleColor,
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
              ],
            ),
          ),
          Text(
            description,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: descriptionColor,
            ),
          ),
        ],
      ),
    );
  }
}
