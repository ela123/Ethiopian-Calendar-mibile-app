import 'package:flutter/material.dart';
import 'background.dart';
import 'appbar.dart';
import 'calendar.dart';
import 'learn.dart';
import 'lostday.dart';
class Listmenu extends StatelessWidget {
  const Listmenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Home", leadingIcon: Icons.menu),
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
                  customText(
                    context,
                    "Calculate The Calendar",
                    "assets/cal.jpg",
                    Calendar(),
                  ),
                  customText(context, "Learn", "assets/Learn.jpg", Learn()),
                  customText(
                    context,
                    "Calculate Lost Day ",
                    "assets/lost_day.png",
                    Lostday(),
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

Widget customText(
  BuildContext context,
  String text,
  String image,
  Widget location,
) {
  final double screenWidth = MediaQuery.of(context).size.width;
  return GestureDetector(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => location),
      );
    },
    child: Padding(
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
                child: Image(image: AssetImage(image), fit: BoxFit.contain),
              ),
            ),
          ],
        ),
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
