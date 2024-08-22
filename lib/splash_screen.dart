import 'dart:async';

import 'package:experiment_app/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplaceScreen extends StatefulWidget{

  @override
  State<SplaceScreen> createState() => _SplaceScreenState();

}

class _SplaceScreenState extends State<SplaceScreen>{
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 3), (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const MyHomePage(title: 'Login Screen')));
    });
  }

  @override
  Widget build(BuildContext context){
    return const Scaffold(
      body: Center(
        child: Text("Welcome To My App", style: TextStyle(fontSize: 35, ),),
      ),
    );
  }
}