import 'package:flutter/material.dart';
import 'package:login_page/login_page.dart';

void main() => runApp(Login());

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Bookshelf",
        home: Scaffold(
          body: LoginPage(),
        ));
  }
}
