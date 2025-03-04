import 'package:flutter/material.dart';

class DescriptionBox extends StatelessWidget {
  final String description;
  const DescriptionBox({super.key, required this.description});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
          child: Text(
            description,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w400,
              color: Colors.black,
            ),
            textAlign: TextAlign.justify,
          ),
        ),
        SizedBox(height: 15),
      ],
    );
  }
}
