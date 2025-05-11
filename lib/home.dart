import 'package:flutter/material.dart';
import 'list.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Image.asset("assets/background.jpg", fit: BoxFit.cover),
        ),
        Scaffold(
          backgroundColor: Colors.black.withOpacity(0.5),
          body: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              // Determine padding and image size based on screen width
              final screenWidth = MediaQuery.of(context).size.width;
              final isSmallScreen = screenWidth < 600;
              final padding = isSmallScreen ? 10.0 : 25.0;
              final imageSize = isSmallScreen ? 150.0 : 250.0;
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Container(
                          height: imageSize,

                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Colors.amber, width: 2.0),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image(
                              image: AssetImage("assets/Getatchew_Haile.jpg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(padding + 15),
                          decoration: BoxDecoration(
                            color: Color(0xFFD9D9D9),
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Colors.amber, width: 2.0),
                          ),

                          child: Padding(
                            padding: EdgeInsets.all(padding),
                            child: Column(
                              children: [
                                Text(
                                  "ጌታቸው ኀይሌ[ 1957–2021]",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                  ),
                                ),
                                Text(
                                  "በኛና በምዕራባውያን መካከል የዘመን ልዩነት መኖሩ የገረመን አቈጣጠሩን የመሠረትንበት የሁለታችንም ባህል (ክርስትና) አንድ ሆኖ ሳለ አቈጣጠራችን አንድ አለመሆኑ ነው እኛ “ዓመተ ምሕረት” ስንል እነሱ “ዓመተ እግዚእ (Anno Domini) ይላሉ፡፡ ታዲያ ምስጢሩ እንዲህ አንድ ከሆነ ለምን የተለያየ መንገድ አለን? መልሱ ቀላል ነው፤ የዘመን አቈጣጠራችን የተመሠረተው በክርስትና ታሪክ ላይ ብቻ አይደለም:: የዘመን ቈጠራ ዘዴ የታወቀውና ይሠራበት የነበረው ከዘመነ ክርስትና በፊት ነው:: ከምዕራባውያን ጋር የተለያየነው የክርስትናን የዘመን አቈጣጠርተቀብለን ቀድሞ እንሠራበት ከነበረው ከጥንቱ የዘመን አቈጣጠር ጋራ ስናያይዝ በተለያየ መንገድ ስለተጠቀምን ነው::",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'NotoSansEthiopic',
                                    fontSize: 14,
                                  ),
                                  textAlign: TextAlign.justify,
                                ),
                                SizedBox(
                                  height: 60,
                                  width: 60,
                                  child: IconButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => Listmenu(),
                                        ),
                                      );
                                    },
                                    icon: Icon(
                                      Icons.arrow_forward_ios_sharp,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}///
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
