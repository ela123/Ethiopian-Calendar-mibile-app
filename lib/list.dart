import 'package:flutter/material.dart';
import 'background.dart';
import 'appbar.dart';

class Listmenu extends StatelessWidget {
  const Listmenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Stack(
  children: [
    Background(), // background at the bottom
    Center(       // text at the center
      child: Container(
        child: Column(
          children: [
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),

            ),
          ],
        ),
           
      ),
    ),

  ],
),
    );
    }
    }

Widget customText(String text) {
  return Text(
    text,
    style: const TextStyle(fontSize: 24, color: Colors.blue),
  );
}

Widget customButton(String label) {
  return ElevatedButton(
    onPressed: () {
      // Do something
    },
    child: Text(label),
  );
}