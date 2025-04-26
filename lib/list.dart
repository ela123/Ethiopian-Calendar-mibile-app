import 'package:flutter/material.dart';
import 'background.dart';
import 'appbar.dart';

class Listmenu extends StatelessWidget {
  const Listmenu({super.key});
  
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: CustomAppBar(),
      body: Stack(
  children: [
    Background(), // background at the bottom
    Padding(
      padding: const EdgeInsets.all(10.0),
      child: Center(       // text at the center
          child: Column(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: screenWidth*0.4,
                width: screenWidth*0.6,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Calculate The Calendar",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),  
                    ),
                    SizedBox(
                      child: ClipRRect(
                        child: Image(image: 
                                   AssetImage("aassets/Easter.png"),
                                   //fit: BoxFit.cover
                                   ),
                      ),
                    ),
                  ],
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