import 'package:flutter/material.dart';

class SubTitleBar extends StatelessWidget {
  final String title;
  const SubTitleBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
          child: Text(
            title,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 5),
          child: Divider(color: Colors.black45, thickness: 1),
        ),
      ],
    );
  }
}
