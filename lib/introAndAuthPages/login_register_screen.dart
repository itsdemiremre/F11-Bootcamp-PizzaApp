import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../pages/home_page.dart';
import 'auth.dart';
import 'package:glass/glass.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String? errorMessage = " ";
  bool isLogin = true;

  final TextEditingController _controllerEmail = TextEditingController();
  final TextEditingController _controllerPassword = TextEditingController();

  Future<void> signInWithEmailAndPassword() async {
    try {
      await Auth().signInWithEmailAndPassword(
          email: _controllerEmail.text, password: _controllerPassword.text);
    } on FirebaseAuthException catch (e) {
      setState(() {
        errorMessage = e.message;
      });
    }
  }

  Future<void> createUserWithEmailAndPassword() async {
    try {
      await Auth().createUserWithEmailAndPassword(
          email: _controllerEmail.text, password: _controllerPassword.text);
    } on FirebaseAuthException catch (e) {
      setState(() {
        errorMessage = e.message;
      });
    }
  }

  Widget _title() {
    return Center(child: const Text("Pizza App",style: TextStyle(color: Colors.amber),));
  }

  Widget _entryField(
    String title,
    TextEditingController controller,
  ) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
      labelText: title,
       labelStyle: const TextStyle(color: Colors.white),
      enabledBorder: OutlineInputBorder( 
      borderRadius: BorderRadius.circular(15.0),
       borderSide: const BorderSide(
          width: 3, color: Colors.green)),
      
    ));
  }

  Widget _entryFieldPassword(
    String title,
    TextEditingController controller,
  ) {
    return TextField(
      obscureText: true,
      obscuringCharacter: "*",
      controller: controller,
      decoration: InputDecoration(
        labelText: title, labelStyle: const TextStyle(color: Colors.white),  enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(15.0),
      borderSide: const BorderSide(
          width: 3, color: Colors.green)
      ),
    ));
  }

  Widget _errorMessage() {
    return Text(errorMessage == "" ? "" : "Humm ? $errorMessage",style: const TextStyle(color: Colors.white));
  }

  Widget _submitButton() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      onPressed:
          isLogin ? signInWithEmailAndPassword : createUserWithEmailAndPassword,
      child: Text(isLogin ? " Log In" : "Register"),
    );
  }

  Widget _passButton() {
    return ElevatedButton(
            style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => HomePage()));
      },
      child: Text("Continue as an Anonymous User"),
    );
  }

  Widget _loginOrRegisterButton() {
    return TextButton(
      onPressed: () {
        setState(() {
          isLogin = !isLogin;
        });
      },
      child: Text(isLogin ? "Register" : "Log In",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.amber),),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: _title(),
          automaticallyImplyLeading: false,
        ),
        body: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('images/LogInPizza.jpg'))),
            child: Container(
              height: double.infinity,
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        children: [
                          _entryField("E-mail", _controllerEmail),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: _entryFieldPassword("Password", _controllerPassword),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: _errorMessage(),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: _submitButton(),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: _loginOrRegisterButton(),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: _passButton(),
                    )
                  ],
                ),
              ),
            ).asGlass(
              tintColor: Colors.transparent,
              clipBorderRadius: BorderRadius.circular(15.0),
              blurX: 5,
              blurY: 5,
            )));
  }
}
