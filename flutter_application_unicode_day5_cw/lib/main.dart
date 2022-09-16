import 'dart:developer';
import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var num1 = 1;

  var num2 = 2;
  var winner = "";
  void play() {
    num1 = Random().nextInt(3) + 1;
    num2 = Random().nextInt(3) + 1;

    if (num1 == num2) {
      winner = "draw";
    } else if (num1 == 1 || num2 == 1) {
      print("first ckeck");
      if (num1 == 2) {
        winner = "player 1 wins.";
      } else if (num2 == 2) {
        print("here");
        winner = "player 2 wins.";
      } else {
        winner = "player 1 win .";
      }
    } else if (num1 == 2 || num2 == 2) {
      print(num1 < num2);
      num1 > num2 ? winner = "player 1 wins .." : winner = "player 2 wins ..";
    }
    setState(() {});
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink[100],
          title: Text("its about to get diceyyyy"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Text("player 1"),
                        Image.asset(
                          "assets/i_$num1.png",
                          height: 120,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Text("player 2"),
                        Image.asset(
                          "assets/i_$num2.png",
                          height: 120,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                height: 100,
              ),
              Container(
                width: 140,
                height: 75,
                child: ElevatedButton(
                  onPressed: () {
                    play();
                  },
                  child: Text("try your luck :p"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.pink[100],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: Text(
                  winner,
                  style: TextStyle(color: Colors.pink[100], fontSize: 20),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
