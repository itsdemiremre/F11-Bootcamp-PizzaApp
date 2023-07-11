import 'package:flutter/material.dart';

class IntroPage2 extends StatelessWidget {
  const IntroPage2({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context)
                .scaffoldBackgroundColor
                .withBlue(250),
                child: Center(child: Text("Page2")),
    );
  }
}