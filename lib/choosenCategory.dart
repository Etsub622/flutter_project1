import 'package:flutter/material.dart';
import 'package:new_one/choosenCard.dart';
import 'package:new_one/data.dart';
import 'package:new_one/footer.dart';

class categoryPage extends StatelessWidget {
  const categoryPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('hello'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      for (var choosen in choosenCategory)
                        Expanded(
                          child: ChoosenCard(
                            imageurl: choosen['imageurl']!,
                            name: choosen['name']!,
                          ),
                        ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      for (var choosen in choosenCategory)
                        Expanded(
                          child: ChoosenCard(
                            imageurl: choosen['imageurl']!,
                            name: choosen['name']!,
                          ),
                        ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      for (var choosen in choosenCategory)
                        Expanded(
                          child: ChoosenCard(
                            imageurl: choosen['imageurl']!,
                            name: choosen['name']!,
                          ),
                        ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const FooterPage(),
            ],
          ),
        ),
      ),
    );
  }
}
