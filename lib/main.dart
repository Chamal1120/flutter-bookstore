import 'package:flutter/material.dart';
import 'package:book_list_view/screens/book_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Root Widget
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ceylon BookStore',
      theme: ThemeData(
        useMaterial3: true,
      ),
      // Imports bookview widget from screens
      home: BookView(),
    );
  }
}

