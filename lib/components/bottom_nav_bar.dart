import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

// ignore: must_be_immutable
class PizzaBottomNavBar extends StatelessWidget {
  void Function(int)? onTabChange;
  PizzaBottomNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 25.0),
        child: GNav(
          onTabChange: (value) => onTabChange!(value),
          mainAxisAlignment: MainAxisAlignment.center,
          activeColor: Colors.deepOrangeAccent,
          color: Colors.grey[300],
          tabActiveBorder: Border.all(color: Colors.deepOrangeAccent),
          gap: 10,
          padding: EdgeInsets.all(20),
          tabs: const [
            // shop tab
            GButton(
              icon: Icons.home_rounded,
              text: 'Shop',
            ),

            // cart tab
            GButton(
              icon: Icons.shopping_bag_outlined,
              text: 'Cart',
            ),
          ],
        ),
      ),
    );
  }
}
