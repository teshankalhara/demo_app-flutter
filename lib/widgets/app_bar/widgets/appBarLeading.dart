// ignore_for_file: file_names

import 'package:flutter/material.dart';

Widget appBarLeading = Padding(
  padding: const EdgeInsets.all(4.0),
  child: Container(
    height: 30,
    width: 30,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(100),
      color: Colors.blue,
    ),
    child: Center(
      child: IconButton(
        onPressed: () {},
        icon: Icon(Icons.local_grocery_store),
      ),
    ),
  ),
);
