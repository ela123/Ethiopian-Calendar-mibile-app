import 'package:flutter/material.dart';
import 'background.dart';
import 'appbar.dart';
class Learn extends StatelessWidget {
  const Learn({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: CustomAppBar(title: "Learn", leadingIcon: null),
    );
  }
}