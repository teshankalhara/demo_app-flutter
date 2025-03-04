import 'package:flutter/material.dart';

class PriceRow extends StatelessWidget {
  final String index;
  final String data;
  final double unit;
  final String measure;

  const PriceRow({
    super.key,
    required this.index,
    required this.data,
    required this.unit,
    required this.measure,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 3, horizontal: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(15),
            ),
            child: Text(
              index,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            width: 150,
            child: Text(
              data,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 60,
                child: Text(
                  "${unit.toStringAsFixed(2)}$measure",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              SizedBox(width: 10),
              Container(
                height: 45,
                width: 45,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Center(
                  child: Icon(Icons.add, color: Colors.black45, size: 30),
                ),
              ),
              SizedBox(width: 10),
              Container(
                height: 45,
                width: 45,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Center(
                  child: Icon(Icons.remove, color: Colors.black45, size: 30),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
