// main.dart
import 'package:flutter/material.dart';
import 'package:practicum_05_navigation/home_page.dart';
import 'package:practicum_05_navigation/second_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: false),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/second_page': (context) => const SecondPage(),
      },
    );
  }
}
