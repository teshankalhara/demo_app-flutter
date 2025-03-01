import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/app_bar/app_bar.dart';
import 'package:flutter_app/pages/home_page/widgets/search_bar.dart';
import 'package:flutter_app/widgets/product_cart/product_cart.dart';

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
              Text(
                'Explore Categories',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  ProductCart(
                    title: "New Item",
                    decoration: "Hello I'm new item plz buy me!",
                    titleColor: Colors.black,
                    descriptionColor: Colors.black87,
                    productBoxColor: Colors.white,
                    smallBoxColor: Colors.grey,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
