import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  var textFromLogin;

  HomeScreen(this.textFromLogin);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:RichText(
          text: TextSpan(
          style: TextStyle(fontSize: 16, color: Colors.grey, fontWeight: FontWeight.w600),
          children: [
            TextSpan(text: "Welcome\n"),
            TextSpan(text: "$textFromLogin", style: TextStyle(fontSize: 30, color: Colors.blue, fontWeight: FontWeight.bold))
          ]
          ),
        )
      ),
    );
  }
}