import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/price_row/price_row.dart';

class PriceTable extends StatelessWidget {
  const PriceTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      child: Column(
        children: [
          PriceRow(
            index: '1',
            data: 'Item Selected 1',
            unit: 100,
            measure: 'g',
          ),
          PriceRow(
            index: '2',
            data: 'Item Selected 2',
            unit: 200,
            measure: 'g',
          ),
          PriceRow(
            index: '3',
            data: 'Item Selected Selected Selected 3',
            unit: 800,
            measure: 'l',
          ),
          PriceRow(
            index: '4',
            data: 'Item Selected 4',
            unit: 250,
            measure: 'l',
          ),
        ],
      ),
    );
  }
}
