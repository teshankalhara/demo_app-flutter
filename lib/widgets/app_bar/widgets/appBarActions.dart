// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_app/pages/category_page/category_page.dart';

List<Widget>? appBarActions(BuildContext context) => [
  Padding(
    padding: const EdgeInsets.all(4.0),
    child: Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: Colors.blue,
      ),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => CategoryPage()),
          );
        },
        child: Center(child: Icon(Icons.camera, color: Colors.white, size: 35)),
      ),
    ),
  ),
];
