import 'package:flutter/material.dart';

class FooterPage extends StatelessWidget {
  const FooterPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Container(
                height: 1.2,
                width: 155,
                color: Colors.black,
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            const Text('A certified brand'),
            const SizedBox(
              width: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Container(
                height: 1.2,
                width: 155,
                color: Colors.black,
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Row(
            children: [
              Expanded(
                child: Image.asset(
                  'asset/images/f1.jpg',
                  width: 120,
                  height: 40,
                ),
              ),
              const SizedBox(
                width: 13,
              ),
              Expanded(
                child: Image.asset(
                  'asset/images/f2.jpg',
                  width: 120,
                  height: 60,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
