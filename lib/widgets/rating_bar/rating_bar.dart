import 'package:flutter/material.dart';

class RatingBar extends StatelessWidget {
  const RatingBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      width: double.infinity,
      height: 140,
      decoration: BoxDecoration(
        // ignore: deprecated_member_use
        color: const Color.fromARGB(115, 193, 193, 193).withOpacity(0.1),
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            // ignore: deprecated_member_use
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 4,
            blurRadius: 20,
            offset: Offset(0, 1),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Rating',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 5),
          Center(
            child: Row(
              mainAxisSize: MainAxisSize.min, // Prevents extra width
              children: List.generate(
                5,
                (index) => Icon(Icons.star, color: Colors.amber, size: 40),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
