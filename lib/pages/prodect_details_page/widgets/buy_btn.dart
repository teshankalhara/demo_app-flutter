import 'package:flutter/material.dart';

class BuyBtn extends StatelessWidget {
  final Color btnBgColor;
  final Color btnTextColor;

  const BuyBtn({
    super.key,
    required this.btnBgColor,
    required this.btnTextColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20, top: 10),
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: btnBgColor,
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 15),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          elevation: 5,
        ),
        child: Text(
          'Buy Now',
          style: TextStyle(
            fontSize: 24,
            color: btnTextColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
