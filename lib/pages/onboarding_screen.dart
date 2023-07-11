import 'package:flutter/material.dart';
import '/introScreens/intro_page_1.dart';
import '/introScreens/intro_page_2.dart';
import '/introScreens/intro_page_3.dart';
import '/widget_tree.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});
  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}
class _OnboardingScreenState extends State<OnboardingScreen> {
  //hangi sayfada olduğumuzu takip etmek için controller.
  PageController _controller = PageController();
  //son sayfada mıyız değil miyiz takibini tutma.
  bool onLastPage = false; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //pageview.
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                onLastPage = (index == 2);
              });
            },
            children: [
             IntroPage1(),
             IntroPage2(),
             IntroPage3(),
             ]
          ),
          //nokta indicator.
          Container(
            alignment: const Alignment(0,0.9),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //skip
                TextButton(
                  onPressed: () { 
                    _controller.jumpToPage(2);            
                    },
                  child: Text("Skip"),
                  ),
                //nokta indicator
                SmoothPageIndicator(controller: _controller, count: 3),
                //next or done.
                onLastPage
                 ? TextButton(
                  onPressed: () { 
                  Navigator.push(context, MaterialPageRoute(builder: (context) => WidgetTree()
                   )
                  );
                 },
                  child: Text("Done"),
                  )
                  : TextButton(
                  onPressed: () { 
                    _controller.nextPage(
                    duration: Duration(milliseconds: 20), 
                    curve: Curves.easeInCirc); },
                  child: Text("Next"),
                  ),
              ],
            ))
        ],
      ),
    );
  }
}