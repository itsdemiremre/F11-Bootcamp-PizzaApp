import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IntroPage1 extends StatelessWidget {
  const IntroPage1({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Theme.of(context).scaffoldBackgroundColor.withAlpha(999),
          child: Center(child: Lottie.network("https://lottie.host/1de54087-b296-4f98-8bde-f86846c83a25/ssb9vmlimU.json"),
          ),
        ),
      ),
    );
  }
}

class IntroPage2 extends StatelessWidget {
  const IntroPage2({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Theme.of(context).scaffoldBackgroundColor.withAlpha(999),
          child: Center(child: Lottie.network("https://lottie.host/8e41fbd6-1c5e-436c-ace6-3450e5554986/roea8aqS1S.json"),
          ),
        ),
      ),
    );
  }
}

class IntroPage3 extends StatelessWidget {
const IntroPage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Theme.of(context).scaffoldBackgroundColor.withAlpha(999),
          child: Center(child: Lottie.network("https://lottie.host/046656db-4f3c-4534-b45d-544bd663c814/W6ov9eOaKI.json"),
          ),
        ),
      ),
    );
  }
}

