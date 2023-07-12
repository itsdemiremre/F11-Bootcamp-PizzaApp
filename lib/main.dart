import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:pizza_app/models/shop.dart';
import 'package:pizza_app/pages/onboarding_screen.dart';
import 'package:provider/provider.dart';
Future <void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const PizzApp());
}

class PizzApp extends StatelessWidget {
  const PizzApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (context) => PizzaApp(),
    builder: (context, child) => MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.amber),
      home: const OnboardingScreen(),
    ),
    );
  }
}

//