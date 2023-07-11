import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../auth.dart';

class HomeScreen extends StatelessWidget {
   HomeScreen({super.key});

   final User? user = Auth().currentUser;

   Future<void> signOut() async {
    await Auth().signOut();
  }

  Widget _title(){
    return const Text("Routeviser'a Hoşgeldiniz!"); //buraya ve login register page e 2 aynı widget koyuldu onlardan biri
  }

    Widget _userUid(){
    return Text(user?.email ?? "Kullanıcı Email");
  }

    Widget _signOutButton(){
    return ElevatedButton(onPressed: signOut,
     child: const Text("Çıkış yap")
     );
  }

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(   
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: _title(),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _userUid(),
            _signOutButton(),
          ],
        ),
      ),
    );
  }
}