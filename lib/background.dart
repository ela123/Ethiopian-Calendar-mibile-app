import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  const Background({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              "assets/background.jpg", fit: BoxFit.cover,),
          ),
           Positioned.fill(
            child: Container(
                color: Colors.black.withOpacity(0.5),
              
            ),
          ),
        ],
      ),
    );
  }
}
 