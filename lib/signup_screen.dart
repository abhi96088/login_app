import 'package:experiment_app/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home_screen.dart';

class SignupScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen>{
  var controller = TextEditingController();

@override
  Widget build(BuildContext context){
  return Scaffold(
    appBar: AppBar(

      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      title: const Text("Signup Screen"),
    ),
    body: SingleChildScrollView(
      child: SizedBox(
        width: double.infinity,
        child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text("Already have an account ?", style: TextStyle(color: Colors.green,),),
                  const SizedBox(
                    width: 5,
                  ),
                  OutlinedButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const MyHomePage(title: "Login Screen")));
                      },
                      child: const Text("Login")
                  ),
                  const SizedBox(
                    width: 5,
                  )
                ],
              ),
              const SizedBox(
                height: 110,
              ),
              SizedBox(
                width: 300,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "SignUp",
                      style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.w600,
                          color: Colors.green),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          label: const Text("Enter Email "),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(11),
                              borderSide: const BorderSide(color: Colors.green)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(11),
                              borderSide: const BorderSide(color: Colors.green))),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      controller: controller,
                      decoration: InputDecoration(
                          label: const Text("Enter Name "),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(11),
                              borderSide: const BorderSide(color: Colors.green)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(11),
                              borderSide: const BorderSide(color: Colors.green))),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          label: const Text("Enter Password"),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(11),
                              borderSide: const BorderSide(color: Colors.green)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(11),
                              borderSide: const BorderSide(color: Colors.green))),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          label: const Text("Confirm Password"),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(11),
                              borderSide: const BorderSide(color: Colors.green)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(11),
                              borderSide: const BorderSide(color: Colors.green))),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: 300,
                      height: 50,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        HomeScreen(controller.text.toString())));
                          },
                          style: ButtonStyle(
                              backgroundColor:
                              WidgetStateProperty.all(Colors.green.shade900)),
                          child: const Text(
                            "Signup",
                            style: TextStyle(color: Colors.white),
                          )),
                    )
                  ],
                ),
              ),
            ]
        ),
      ),
    ),
  );
}
}