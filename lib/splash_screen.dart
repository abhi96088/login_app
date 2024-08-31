import 'dart:async';

import 'package:experiment_app/home_screen.dart';
import 'package:experiment_app/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplaceScreen extends StatefulWidget{

  @override
  State<SplaceScreen> createState() => _SplaceScreenState();

}

class _SplaceScreenState extends State<SplaceScreen>{
  @override
  void initState() {
    super.initState();
    checkLogin();
  }

  @override
  Widget build(BuildContext context){
    return const Scaffold(
      body: Center(
        child: Text("Welcome To My App", style: TextStyle(fontSize: 35, ),),
      ),
    );
  }

  void checkLogin() async{
    var sharedPref = await SharedPreferences.getInstance();
    var isLogedin = sharedPref.getBool("login");
    var loginData = sharedPref.getString("name");

    Timer(const Duration(seconds: 3), (){
      if(isLogedin != null) {
        if(isLogedin){
          Navigator.pushReplacement(context, MaterialPageRoute(
              builder: (context) => HomeScreen(loginData)));
        }else{
          Navigator.pushReplacement(context, MaterialPageRoute(
              builder: (context) => const MyHomePage(title: 'Login Screen')));
        }

      }else{
        Navigator.pushReplacement(context, MaterialPageRoute(
            builder: (context) => const MyHomePage(title: 'Login Screen')));
      }
    });
  }
}