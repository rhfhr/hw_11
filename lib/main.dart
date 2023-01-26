import 'package:flutter/material.dart';
import 'package:hw11/pages/products.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Products(),
    );
  }
}
