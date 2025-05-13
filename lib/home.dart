import 'package:flutter/material.dart';
import 'list.dart';
class HomePage extends StatelessWidget {
  const  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Center(
            child: Text(
              "Hello with background!",
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
          ),
            );
  }
}
