import 'package:flutter/material.dart';
import 'home.dart'; // Import your home page
import 'background.dart';
import 'list.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  Listmenu(), // Call HomePage here
    );
  }
}
