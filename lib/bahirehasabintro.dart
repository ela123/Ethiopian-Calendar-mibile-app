import 'package:flutter/material.dart';
import 'appbar.dart';
class BahireHasabIntro extends StatelessWidget {
  const BahireHasabIntro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:CustomAppBar(title: "Bahire Hasab ", leadingIcon: null), 
      body: Container(
        padding: const EdgeInsets.all(16),
        color: Colors.teal[50],
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              sectionTitle('The Ethiopian Calendar'),
              sectionText(
                  'Ethiopia has its own ancient calendar based on the system called Bahire Hasab (ባሕረ ሃሳብ), meaning "Sea of Ideas". Also known as Abushakir, it is used to calculate festivals and fasting days.'),
              sectionText(
                  'The Ethiopian Calendar is similar to the Coptic-Egyptian Calendar but differs slightly, especially in saints\' days observation.'),
              sectionTitle('Amete Alem - አመተ አለም'),
              sectionText(
                  'Amete Alem is the number of years since the beginning of creation. It is calculated as:'),
              formulaText('Amete Alem = 5500 + Ethiopian Year'),
              sectionText('Example for 2015 E.C:\nAmete Alem = 5500 + 2015 = 7515'),
              sectionTitle('Evangelist of the Year - ወንጌላዊ'),
              sectionText(
                  'The Ethiopian years rotate among the four Evangelists: Matthew, Mark, Luke, and John.\nTo find the Evangelist:'),
              formulaText('Amete Alem ÷ 4 -> Remainder:\n1 = Matthew\n2 = Mark\n3 = Luke\n0 = John'),
              sectionText('Example: 7515 ÷ 4 = remainder 3 → Luke'),
              sectionTitle('New Year Day Calculation'),
              sectionText(
                  'To find the weekday the new year starts:\n(Amete Alem + Metene Rabiet) ÷ 7 → remainder gives the day:'),
              formulaText('0 = Monday, 1 = Tuesday, ..., 6 = Sunday'),
              sectionText('Example: (7515 + 1878) ÷ 7 → remainder 6 → Sunday'),
              sectionTitle('Medeb and Wenber'),
              sectionText('Medeb = Amete Alem ÷ 19 → Remainder.\nWenber = Medeb - 1.'),
              sectionText('Example: 7515 ÷ 19 → remainder 10 → Wenber = 9'),
              sectionTitle('Abektie and Metqi'),
              sectionText(
                  'Abektie = (Wenber × 11) ÷ 30 → remainder.\nMetqi = (Wenber × 19) ÷ 30 → remainder.\nNote: Abektie + Metqi = 30.'),
              sectionText('Example: Abektie = 9, Metqi = 21 (for 2015 E.C)'),
              sectionTitle('Beale Metqi and Mebaja Hamer'),
              sectionText(
                  'Beale Metqi is determined by Metqi.\nMebaja Hamer = Beale Metqi + Tewsak.'),
              sectionText(
                  'Example: Metqi = 21 → Beale Metqi = Meskerem 21 → Mebaja Hamer = 29'),
              sectionTitle('Fasting and Holy Days'),
              sectionText('Based on Nineveh Fast and Mebaja Hamer:'),
              bulletedText([
                'Nineveh Fast → Mebaja Hamer date',
                'Abiy Tsome = 14 days after Nineveh',
                'Debre Zeit = 41 days after Nineveh',
                'Hosanna = 62 days after Nineveh',
                'Good Friday = 67 days after Nineveh',
                'Tinsaye = 69 days after Nineveh',
                'Ascension = 108 days after Nineveh',
                'Paraclete = 118 days after Nineveh',
                'Holy Apostles = 119 days after Nineveh',
              ]),
              const SizedBox(height: 30),
              Center(
                child: Text(
                  'Happy Ethiopian New Year!',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.teal[900],
                  ),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  Widget sectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(top: 24, bottom: 8),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color: Colors.teal,
        ),
      ),
    );
  }

  Widget sectionText(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Text(
        text,
        style: const TextStyle(fontSize: 16, height: 1.5),
      ),
    );
  }

  Widget formulaText(String formula) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Text(
        formula,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic,
          color: Colors.brown,
          height: 1.5,
        ),
      ),
    );
  }

  Widget bulletedText(List<String> items) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: items
          .map(
            (item) => Padding(
              padding: const EdgeInsets.only(bottom: 6),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('• ', style: TextStyle(fontSize: 16)),
                  Expanded(
                    child: Text(
                      item,
                      style: const TextStyle(fontSize: 16, height: 1.5),
                    ),
                  ),
                ],
              ),
            ),
          )
          .toList(),
    );
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
}
