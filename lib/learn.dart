import 'package:flutter/material.dart';
import 'background.dart';
import 'appbar.dart';
import 'bahirehasabintro.dart';
import 'amhaic.dart';
import 'files.dart';
class Learn extends StatelessWidget {
  const Learn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Learn", leadingIcon: null),
      body: Stack(
        children: [
          Background(), // if you have background
          Align( // Align the Column horizontally
  alignment: Alignment.topCenter, // Top (vertical start) + Center (horizontal center)
  child: Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.start, // Start vertically (top)
    crossAxisAlignment: CrossAxisAlignment.center, // Center horizontally
    children: [
      SizedBox(height: 20), // add some top spacing if needed
      learnw(context, "Amharic",Learnamharic()),
      SizedBox(height: 10),
      learnw(context, "English",BahireHasabIntro()),
      SizedBox(height: 10),
      learnw(context, "Files",Files()),
    ],
  ),
),

        ],
      ),
    );
  }
}

Widget learnw(BuildContext context, String title , Widget location) {
  final screenWidth = MediaQuery.of(context).size.width;
  return GestureDetector(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => location),
      );
    },
    child: Container(
      height: 60,
      width: screenWidth * 0.6, // make it responsive
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(14),
      ),
      alignment: Alignment.center, // center text inside container
      child: Text(
        title,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 20, color: Colors.white,fontWeight: FontWeight.bold),
      ),
    ),
  );
}
