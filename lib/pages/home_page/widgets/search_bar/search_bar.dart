import 'package:flutter/material.dart';
import 'package:flutter_app/pages/home_page/widgets/search_bar/text_input_field.dart';

Widget searchBarBox = Padding(
  padding: EdgeInsets.symmetric(vertical: 15),
  child: Container(
    width: double.infinity,
    height: 50,
    decoration: BoxDecoration(
      color: const Color.fromARGB(115, 199, 199, 199),
      borderRadius: BorderRadius.circular(50),
      border: Border.all(color: Colors.black45, width: 1),
    ),
    child: Row(
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(8, 5, 5, 5),
          child: Icon(Icons.search, color: Colors.black45, size: 35),
        ),
        textInputBar,
      ],
    ),
  ),
);
