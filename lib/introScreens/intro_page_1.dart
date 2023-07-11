import 'package:flutter/material.dart';

class IntroPage1 extends StatelessWidget {
  const IntroPage1({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context)
                .scaffoldBackgroundColor
                .withAlpha(150),
                child: Center(child: Text("Page1")),
    );
  }
}