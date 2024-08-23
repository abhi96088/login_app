import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  var textFromLogin;

  HomeScreen(this.textFromLogin);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Map<String, dynamic>> listItem = [
    {"title": "personal Information ", "icon": Icon(Icons.account_circle)},
    {"title": "Your Order", "icon": Icon(Icons.shopping_cart)},
    {"title": "Your Favorite", "icon": Icon(Icons.favorite_border)},
    {"title": "Payments", "icon": Icon(Icons.payment)},
    {"title": "Logout", "icon": Icon(Icons.login)},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(width: 1, color: Colors.black54)),
                child: Icon(
                  Icons.arrow_back,
                  size: 30,
                )),
            Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(width: 1, color: Colors.black54)),
                child: Icon(
                  Icons.edit_calendar_sharp,
                  size: 30,
                )),
          ],
        ),
      ),
      body: Center(
          child: Column(

        children: [
          Icon(
            Icons.account_circle,
            size: 200,
          ),
          const SizedBox(
            height: 20,
          ),
          Text("${widget.textFromLogin}",
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold)),


          SizedBox(height: 50,),


          Center(
            child: SizedBox(
              width: double.infinity,
              height: 100,
              child: Card(
                color: Colors.amberAccent,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Banance"),
                        Text("000"),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Banance"),
                        Text("000"),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Banance"),
                        Text("000"),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 300,
            child: ListView.builder(
                itemCount: listItem.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text("${listItem[index]["title"]}"),
                    trailing: listItem[index]["icon"],
                  );
                }),
          )
        ],
      )),
    );
  }
}
