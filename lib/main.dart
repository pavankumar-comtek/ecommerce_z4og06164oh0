import 'package:flutter/material.dart';
import 'screens/main_page.dart';
import 'screens/my_bag.dart';
import 'screens/product_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: MainPage());
  }
}
