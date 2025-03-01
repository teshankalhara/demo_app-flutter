import 'package:flutter/material.dart';
import 'package:flutter_app/pages/home_page/widgets/category_set/category_set.dart';
import 'package:flutter_app/pages/home_page/widgets/product_set/product_set.dart';
import 'package:flutter_app/widgets/app_bar/app_bar.dart';
import 'package:flutter_app/pages/home_page/widgets/search_bar/search_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              searchBarBox,
              SizedBox(height: 5),
              Text(
                'Explore Categories',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 10),
              CategorySet(),
              SizedBox(height: 10),
              Text(
                'For Sale and Cost',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 10),
              ProductSet(),
              SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}
