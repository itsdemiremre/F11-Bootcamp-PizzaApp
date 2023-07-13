import 'package:flutter/material.dart';
import 'package:pizza_app/components/bottom_nav_bar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:pizza_app/introAndAuthPages/login_register_screen.dart';
import '../introAndAuthPages/auth.dart';
import 'cart_page.dart';
import 'shop_page.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key});

  final User? user = Auth().currentUser;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // navigate bottom bar
  int _selectedIndex = 0;

  void navigateBottomBar(int newIndex) {
    setState(() {
      _selectedIndex = newIndex;
    });
  }

  // pages to display
  final List<Widget> _pages = [
    // shop page
    const ShopPage(),

    // cart page
    const CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Add the desired functionality to handle back navigation
          },
        ),
        title: _userUid(),
        
        actions: [
          _signOutButton(),
        ],
      ),
      backgroundColor: Color(0xff36393e),
      bottomNavigationBar: PizzaBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      body: _pages[_selectedIndex],
    );
  }

  // Widget _title() {
  //   return Text(
  //     "PizzaApp'e Hoşgeldiniz!",
  //     style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
  //   );
  // }

  Widget _signOutButton() {
    return OutlinedButton(
      onPressed: signOut,
      style: OutlinedButton.styleFrom(
        foregroundColor: Colors.white,
        side: const BorderSide(color: Colors.white),
      ),
      child: const Text("Çıkış yap"),
    );
  }

    Widget _userUid(){
          final User? user = Auth().currentUser;
    return Text( user?.email ?? "Anonim Kullanıcı");
  }

  Future<void> signOut() async {
    await Auth().signOut();
    Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage(),));
  }
}
