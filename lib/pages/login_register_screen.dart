import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:pizza_app/pages/home_page.dart';
import '../auth.dart';

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

  Future<void>signInWithEmailAndPassword() async {
    try {
      await Auth().signInWithEmailAndPassword(
        email: _controllerEmail.text,
        password: _controllerPassword.text
        );
    } on FirebaseAuthException catch (e) {
      setState(() {
        errorMessage = e.message;
      });
    }
  }

  Future<void> createUserWithEmailAndPassword() async {
    try{
       await Auth().createUserWithEmailAndPassword(
        email: _controllerEmail.text,
        password: _controllerPassword.text
        );
    } on FirebaseAuthException catch (e) {
       setState(() {
        errorMessage = e.message;
      });
    }
  }

   Widget _title(){
    return const Text("Üye olarak e mail servisimizle indirimlerimizden haberdar olabilirsiniz");
  }
     Widget _entryField(
    String title,
    TextEditingController controller,
    ) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        labelText: title
      ),
    );
  }

   Widget _errorMessage(){
    return  Text(errorMessage == "" ? "" : "Humm ? $errorMessage");
  }

   Widget _submitButton(){
    return ElevatedButton(
      onPressed: isLogin ? signInWithEmailAndPassword : createUserWithEmailAndPassword,
      child: Text(isLogin ? "Giriş yapın" : "Üye olun"),
    );
  }

   Widget _passButton(){
    return ElevatedButton(
      onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()
                   ));
                  },
      child: Text("Anonim olarak devam edin"),
    );
  }

   Widget _loginOrRegisterButton(){
    return TextButton(
      onPressed: () {
        setState(() {
          isLogin = !isLogin;
        });
      },
      child: Text(isLogin ? "Ya da Üye olun" : "Ya da Giriş yapın"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
            _entryField("Email",_controllerEmail),
            _entryField("Şifre",_controllerPassword),
            _errorMessage(),
            _submitButton(),
            _loginOrRegisterButton(),
            _passButton()
          ],
        ),
      ),
    );
  }
}