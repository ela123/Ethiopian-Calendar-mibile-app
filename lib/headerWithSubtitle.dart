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

    return Container(
      margin: const EdgeInsets.all(2), // space around
      padding: const EdgeInsets.all(10), // space inside the box
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.8), // ✅ background with 0.8 opacity
        borderRadius: BorderRadius.circular(12), // rounded corners
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start, // align text to the left
        children: [
          Text(
            header,
            style: TextStyle(
              fontSize: screenWidth * 0.05,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          //SizedBox(height: 1), // small space between header and subtitle
          Text(
            subtitle,
            style: TextStyle(
              fontSize: screenWidth * 0.045,
              color: Colors.white70,
            ),
          ),
        ],
      ),
    );
  }
}
