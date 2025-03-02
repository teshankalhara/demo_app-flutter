import 'package:flutter/material.dart';

class NotificationCard extends StatelessWidget {
  const NotificationCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      width: double.infinity,
      height: 120,
      decoration: BoxDecoration(
        // ignore: deprecated_member_use
        color: const Color.fromARGB(115, 193, 193, 193).withOpacity(0.1),
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.black45, width: 1),
        boxShadow: [
          BoxShadow(
            // ignore: deprecated_member_use
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 15,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(8, 5, 5, 5),
                child: Icon(
                  Icons.notifications,
                  color: Colors.black45,
                  size: 35,
                ),
              ),
              Text(
                'Notification',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w400),
              ),
            ],
          ),
          Text(
            "Get 50% off on T&C Apply",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
          Text("Sped payements with Google Pay"),
        ],
      ),
    );
  }
}
