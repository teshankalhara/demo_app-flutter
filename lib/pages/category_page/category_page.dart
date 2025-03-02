import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/category_item/category_item.dart';
import 'package:flutter_app/widgets/notification_card/notification_card.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Categories',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            if (kDebugMode) {
              print('Back to home page');
            }
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              NotificationCard(),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                child: Text(
                  'All Categories',
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
              SizedBox(height: 10),
              CategoryItem(
                title: 'Sample Title',
                description: 'Sample Description',
                titleColor: Colors.black,
                descriptionColor: const Color.fromARGB(255, 53, 53, 53),
                backgroundColor: const Color.fromARGB(255, 3, 182, 131),
                borderColor: const Color.fromARGB(255, 15, 3, 130),
                circleColor: const Color.fromARGB(255, 1, 69, 125),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
