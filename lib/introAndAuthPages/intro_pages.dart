import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IntroPage1 extends StatelessWidget {
  const IntroPage1({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff36393e),
      body: Center(
        child: Container(
          // color: Theme.of(context).scaffoldBackgroundColor.withAlpha(999),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  style: TextStyle(color: Colors.redAccent,fontWeight: FontWeight.bold),
                  "Welcome! Step into PizzaApp and embark on a perfect journey to order your pizza. \n\n"
                "We greet you with our welcoming screen adorned with visual animations. Are you ready? "),
              ),
              Center(child: Lottie.network("https://lottie.host/1de54087-b296-4f98-8bde-f86846c83a25/ssb9vmlimU.json"),
              ),
            ],
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
      backgroundColor: Color(0xff36393e),
      body: Center(
        child: Container(
          // color: Theme.of(context).scaffoldBackgroundColor.withAlpha(999),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  style: TextStyle(color: Colors.redAccent,fontWeight: FontWeight.bold),
                  "Customize! \n\nPizzaApp offers you a unique experience. Customize the thickness of the pizza crust, the ingredients, and the sauce choices to your liking.\n\n" 
                "You are in the right place for a pizza tailored exactly to your preferences!"),
              ),
              Center(child: Lottie.network("https://lottie.host/8e41fbd6-1c5e-436c-ace6-3450e5554986/roea8aqS1S.json"),
              ),
            ],
          ),
        ),
      ),
    );//
       
  }
}

class IntroPage3 extends StatelessWidget {
const IntroPage3({super.key});

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      backgroundColor: Color(0xff36393e),
      body: Center(
        child: Container(
          // color: Theme.of(context).scaffoldBackgroundColor.withAlpha(999),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  style: TextStyle(color: Colors.redAccent,fontWeight: FontWeight.bold),
                  "Easy Ordering!\n\nOrdering is now a breeze! You can order your pizza without leaving your table, without waiting in line, and without needing a physical menu. \n"
                "Just a few clicks are all it takes!"),
              ),
              Center(child: Lottie.network("https://lottie.host/046656db-4f3c-4534-b45d-544bd663c814/W6ov9eOaKI.json"),
              ),
            ],
          ),
        ),
      ),
    );
      
  }
}

