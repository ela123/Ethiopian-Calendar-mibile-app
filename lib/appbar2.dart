import 'package:flutter/material.dart';

class AppBar2 extends StatelessWidget implements PreferredSizeWidget {
  final dynamic title;
  
  const AppBar2({super.key, required this.title});

  @override
  Widget build(BuildContext context ) {
    // Get the screen width
    final double screenWidth = MediaQuery.of(context).size.width;

    return AppBar(
      backgroundColor: const Color.fromARGB(27, 78, 75, 73),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.menu,
              color: Colors.black,
              size:
                  screenWidth *
                  0.08, // Responsive icon size (8% of screen width)
            ),
          ),
          Text(
            title,
            style: TextStyle(
              fontSize:
                  screenWidth *
                  0.07, // Responsive text size (7% of screen width)
              fontFamily: 'Samantha',
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}




