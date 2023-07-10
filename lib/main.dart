import 'package:flutter/material.dart';

import 'pages/home_page.dart';

void main() {
  runApp(const PizzApp());
}

class PizzApp extends StatelessWidget {
  const PizzApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
