import 'package:experiment_app/home_screen.dart';
import 'package:experiment_app/signup_screen.dart';
import 'package:experiment_app/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      home: SplaceScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text("Don't have an account ?", style: TextStyle(color: Colors.green,),),
                  const SizedBox(
                    width: 5,
                  ),
                  OutlinedButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => SignupScreen()));
                      },
                      child: const Text("Sign Up")
                  ),
                  const SizedBox(
                    width: 5,
                  )
                ],
              ),
              const SizedBox(
                height: 200,
              ),
              SizedBox(
              width: 300,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Login",
                    style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.w600,
                        color: Colors.green),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  TextField(
                    controller: controller,
                    decoration: InputDecoration(
                        label: const Text("Enter Username"),
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
                          "LogIn",
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
