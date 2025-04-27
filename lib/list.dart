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
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(
              // text at the center
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  customText(context, "Calculate The Calendar", "assets/cal.jpg"),
                  customText(context, "Learn", "assets/Learn.jpg"),
                  customText(context, "calculate Lost Day ", "assets/lost_day.png"),
                  ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget customText(BuildContext context, String text, String image) {
  final double screenWidth = MediaQuery.of(context).size.width;
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: Container(
      height: screenWidth * 0.4,
      width: screenWidth * 0.6,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
           SizedBox(
              height: 90,
              width: 90,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: Image(
                  image: AssetImage(image),
                  fit: BoxFit.contain,
                ),
              ),
            ),
          
        ],
      ),
    ),
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
