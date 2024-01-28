import 'package:flutter/material.dart';
import 'package:new_one/cardCategory.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'product design',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('product design'),
        ),
        body: const SingleChildScrollView(
          child: CardCategory(),
        ),
      ),
    );
  }
}
