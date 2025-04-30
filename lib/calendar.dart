import 'package:flutter/material.dart';
import 'appbar.dart';
import 'background.dart';
import 'headerWithSubtitle.dart'; // <-- make sure you imported it

class Calendar extends StatelessWidget {
  const Calendar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Calendar", leadingIcon: null),
      body: Stack(
        children: [
          Background(),
          SingleChildScrollView(
            child: Center(  // Add Center to properly center the Column
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start, // Center vertically
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top:10 ),
                    child: input1(context),
                  ),
                  HeaderWithSubtitle(
                    header: "ዘመን",
                    subtitle: "Please enter your details below",
                  ),
                  HeaderWithSubtitle(
                    header: "ዐወደ ዓመት",
                    subtitle: "Please enter your details below",
                  ),
                  HeaderWithSubtitle(
                    header: "አበቅቴ",
                    subtitle: "Please enter your details below",
                  ),
                  HeaderWithSubtitle(
                    header: "መጥቅዕ",
                    subtitle: "Please enter your details below",
                  ),
                  HeaderWithSubtitle(
                    header: "ነነዌ",
                    subtitle: "Please enter your details below",
                  ),
                  HeaderWithSubtitle(
                    header: "ዐቢይ ጾም",
                    subtitle: "Please enter your details below",
                  ),
                  HeaderWithSubtitle(
                    header: "ደብረ ዘይት",
                    subtitle: "Please enter your details below",
                  ),
                  HeaderWithSubtitle(
                    header: "ደብረ ዘይት",
                    subtitle: "Please enter your details below",
                  ),
                  HeaderWithSubtitle(
                    header: "ሆሣዕና",
                    subtitle: "Please enter your details below",
                  ),
                  HeaderWithSubtitle(
                    header: "ስቅለት",
                    subtitle: "Please enter your details below",
                  ),
                  HeaderWithSubtitle(
                    header: "ትንሣኤ",
                    subtitle: "Please enter your details below",
                  ),
                  HeaderWithSubtitle(
                    header: "ርክበ ካህናት",
                    subtitle: "Please enter your details below",
                  ),
                  HeaderWithSubtitle(
                    header: "ዕርገት",
                    subtitle: "Please enter your details below",
                  ),
                  HeaderWithSubtitle(
                    header: "ጰራቅሊጦስ",
                    subtitle: "Please enter your details below",
                  ),
                  HeaderWithSubtitle(
                    header: "ጸመ ሐዋርያት (የሰኔ ጾም)",
                    subtitle: "Please enter your details below",
                  ),
                  HeaderWithSubtitle(
                    header: "ጸመ ድኅነት",
                    subtitle: "Please enter your details below",
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

Widget input1(BuildContext context) {
  final double screenWidth = MediaQuery.of(context).size.width;
  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 60,
            width: screenWidth * 0.8,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
            ),
            child: Row(
              children: [
                Expanded(  // ✅ TextField expands properly now
                  child: TextField(
                    style: TextStyle(
                      color: Colors.black,
                    ),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white70,
                      hintText: 'Enter your year here',
                      hintStyle: TextStyle(color: Colors.black87),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14),
                      ),
                    ),
                  ),
                ),// ✅ Small space between TextField and button
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.white70,
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                      icon: Icon(Icons.forward_rounded, color: Colors.black),
                      onPressed: () {
                        // Your action
                      },
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    ),
  );
}







///
///
///
///
///
///
///
///
///
///
///
///
///
///
///
///
///
///
///
///
///
///
///
///
///
///
///
///
///
///
///
///
///
///
///
///
///
///
///
///
///
///
///
///
///
///
///
///
///
///
///
///
///
///
///
///
///
///
///
///