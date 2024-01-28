import 'package:flutter/material.dart';
import 'package:new_one/choosenCategory.dart';

class HomePage extends StatelessWidget {
  final String imageurl;
  final String name;

  const HomePage({
    Key? key,
    required this.imageurl,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(1.0),
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => categoryPage()),
                );
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(18.0),
                child: Card(
                  elevation: 4,
                  child: SizedBox(
                    width: 140,
                    height: 90,
                    child: Image.asset(
                      imageurl,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 3,
            ),
            Text(
              name,
              style: const TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
