import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/pages/category_page/widgets/category_item_set/category_item_set.dart';
import 'package:flutter_app/widgets/notification_card/notification_card.dart';
import 'package:flutter_app/widgets/sub_title_bar/sub_title_bar.dart';

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
              SizedBox(height: 15),
              SubTitleBar(title: 'All Categories'),
              SizedBox(height: 10),
              CategoryItemSet(),
              SubTitleBar(title: 'Selected Items'),
            ],
          ),
        ),
      ),
    );
  }
}
