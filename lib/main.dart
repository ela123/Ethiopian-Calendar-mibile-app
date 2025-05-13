import 'package:flutter/material.dart';
//import 'home.dart'; // Import your home page
//import 'MyTestApp.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      home: Scaffold(
        body: Center(
            child: Text(
              "Hello with background!",
              style: TextStyle(color: Colors.black, fontSize: 24),
            ),
          ),
      ), // Replace with your home page
    );
  }
}
