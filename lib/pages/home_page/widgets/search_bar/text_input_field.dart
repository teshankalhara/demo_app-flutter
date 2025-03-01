import 'package:flutter/material.dart';

Widget textInputBar = Expanded(
  child: TextField(
    textAlign: TextAlign.left,
    textAlignVertical: TextAlignVertical.center,
    decoration: InputDecoration(
      border: InputBorder.none,
      hintText: 'Search here...',
      hintStyle: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.w400,
        color: Colors.black45,
      ),
    ),
    style: TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.w400,
      color: Colors.black45,
    ),
  ),
);
