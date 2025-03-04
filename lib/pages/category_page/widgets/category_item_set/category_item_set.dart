import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/category_item/category_item.dart';

class CategoryItemSet extends StatelessWidget {
  const CategoryItemSet({super.key});

  @override
  Widget build(BuildContext context) {
    final items = List.generate(
      6,
      (index) => const CategoryItem(
        title: 'Sample Title',
        description: 'Sample Description',
        titleColor: Colors.black,
        descriptionColor: Color.fromARGB(255, 53, 53, 53),
        backgroundColor: Color.fromARGB(255, 3, 182, 131),
        borderColor: Color.fromARGB(255, 15, 3, 130),
        circleColor: Color.fromARGB(255, 1, 69, 125),
      ),
    );

    return Column(
      children: List.generate(
        (items.length / 2).ceil(), // Adjusted row count
        (rowIndex) {
          int firstIndex = rowIndex * 2;
          int secondIndex = firstIndex + 1;
          return Container(
            margin: const EdgeInsets.only(bottom: 15),
            padding: const EdgeInsets.only(bottom: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                items[firstIndex],
                if (secondIndex < items.length) ...[
                  const SizedBox(width: 10),
                  items[secondIndex],
                ],
              ],
            ),
          );
        },
      ),
    );
  }
}
