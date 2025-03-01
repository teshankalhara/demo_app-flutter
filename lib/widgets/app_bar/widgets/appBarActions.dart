// ignore_for_file: file_names

import 'package:flutter/material.dart';

List<Widget>? appBarActions = [
  Padding(
    padding: const EdgeInsets.all(4.0),
    child: Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: Colors.blue,
      ),
      child: Center(child: Icon(Icons.camera, color: Colors.white, size: 35)),
    ),
  ),
];
