import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  LoginPage();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Container(
              margin: EdgeInsets.only(top: 0),
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://img.icons8.com/nolan/2x/user-male-circle.png'),
                      fit: BoxFit.fill)),
            ),
          ),
          Container(
              margin: EdgeInsets.only(top: 15, left: 25, right: 25),
              child: Column(children: <Widget>[
                TextField(
                  decoration: new InputDecoration(
                      hintText: "username",
                      border: OutlineInputBorder(),
                      contentPadding: EdgeInsets.only(
                          left: 15, bottom: 11, top: 11, right: 15)),
                ),
                SizedBox(height: 20),
                TextField(
                  decoration: new InputDecoration(
                      hintText: "password",
                      border: OutlineInputBorder(),
                      contentPadding: EdgeInsets.only(
                          left: 15, bottom: 11, top: 11, right: 15)),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                    width: double.infinity,
                    height: 45,
                    child: ElevatedButton(
                      onPressed: null,
                      child: Text("Login"),
                    ))
              ]))
        ],
      ),
    );
  }
}
