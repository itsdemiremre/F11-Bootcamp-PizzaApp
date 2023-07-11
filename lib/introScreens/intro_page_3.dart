import 'package:flutter/material.dart';

class IntroPage3 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context)
                .scaffoldBackgroundColor
                .withRed(5),
                child: Center(child: Text("Page3")),
    );
  }
}