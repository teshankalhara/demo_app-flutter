import 'package:flutter/material.dart';
import 'package:flutter_app/pages/prodect_details_page/widgets/buy_btn.dart';
import 'package:flutter_app/pages/prodect_details_page/widgets/price_table.dart';
import 'package:flutter_app/pages/prodect_details_page/widgets/total_price.dart';
import 'package:flutter_app/widgets/description_box/description_box.dart';
import 'package:flutter_app/widgets/notification_card/notification_card.dart';
import 'package:flutter_app/widgets/sub_title_bar/sub_title_bar.dart';

class ProdectDetailsPage extends StatelessWidget {
  const ProdectDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Product Details',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
        leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: () {}),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              NotificationCard(),
              SizedBox(height: 15),
              Padding(
                padding: EdgeInsets.all(10),
                child: Container(
                  height: 300,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(
                    child: Icon(
                      Icons.play_circle_fill,
                      color: Colors.black45,
                      size: 300,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15),
              SubTitleBar(title: 'Product Information'),
              DescriptionBox(
                description:
                    "Route Handlers are not cached by default. You can, however, opt into caching for GET methods. Other supported HTTP methods are not cached. To cache a GET method, use a route config option such as export const dynamic = 'force-static' in your Route Handler file.",
              ),
              SubTitleBar(title: 'Product Information'),
              DescriptionBox(
                description:
                    "Route Handlers are not cached by default. You can, however, opt into caching for GET methods. Other supported HTTP methods are not cached. To cache a GET method, use a route config option such as export const dynamic = 'force-static' in your Route Handler file.",
              ),
              SubTitleBar(title: 'Price List'),
              PriceTable(),
              TotalPrice(price: 100.0, unit: 'LKR'),
              SizedBox(height: 5),
              BuyBtn(btnBgColor: Colors.black45, btnTextColor: Colors.white),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
