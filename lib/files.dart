import 'package:flutter/material.dart';
import 'appbar.dart';
class Files extends StatelessWidget {
  const Files({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: CustomAppBar(title: "Files", leadingIcon: null),
    );
  }
}