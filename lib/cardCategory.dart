import 'package:flutter/material.dart';
import 'package:new_one/data.dart';
import 'package:new_one/footer.dart';
import 'package:new_one/home.dart';

class CardCategory extends StatelessWidget {
  const CardCategory({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 12,
        ),
        const Text(
          'Select a category',
          style: TextStyle(fontSize: 22),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            for (var car in carList)
              HomePage(
                imageurl: car['imageurl']!,
                name: car['name']!,
              ),
          ],
        ),
        const SizedBox(
          height: 8,
        ),
        Row(
          children: [
            for (var bike in bikeList)
              HomePage(
                imageurl: bike['imageurl']!,
                name: bike['name']!,
              ),
          ],
        ),
        const SizedBox(
          height: 8,
        ),
        Row(
          children: [
            for (var motor in motorList)
              HomePage(
                imageurl: motor['imageurl']!,
                name: motor['name']!,
              ),
          ],
        ),
        const SizedBox(
          height: 50,
        ),
        const FooterPage()
      ],
    );
  }
}
