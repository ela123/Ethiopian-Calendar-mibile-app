import 'package:flutter/material.dart';

class HeaderWithSubtitle extends StatelessWidget {
  final String header;
  final String subtitle;

  const HeaderWithSubtitle({
    super.key,
    required this.header,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start, // align text to the left
      children: [
        Text(
          header,
          style: TextStyle(
            fontSize: screenWidth * 0.05, // 7% of screen width
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        Text(
          subtitle,
          style: TextStyle(
            fontSize: screenWidth * 0.35, // 4.5% of screen width
            color: Colors.white70,
          ),
        ),
      ],
      
    );
  }
}
