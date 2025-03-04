import 'package:flutter/material.dart';
import 'package:flutter_app/pages/category_page/category_page.dart';
import 'package:flutter_app/pages/home_page/home_page.dart';
import 'package:flutter_app/pages/prodect_details_page/product_details_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      //home: HomePage(),
      //home: CategoryPage(),
      home: ProdectDetailsPage(),
    );
  }
}
