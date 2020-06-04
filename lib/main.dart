import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  State<StatefulWidget> createState() {
    return new MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  Random rand = new Random();
  int red = 0;
  int green = 0;
  int blue = 0;

  int bRed = 255;
  int bGeen = 255;
  int bBlue = 255;

  void changeTextColor() {
    setState(() {
      red = rand.nextInt(255);
      green = rand.nextInt(255);
      blue = rand.nextInt(255);
    });
  }

  void changeBackgroundColor() {
    setState(() {
      bRed = rand.nextInt(255);
      bGeen = rand.nextInt(255);
      bBlue = rand.nextInt(255);
    });
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        home: new Scaffold(
      appBar: new AppBar(
        title: new Text("First screen!!"),
      ),
      body: new GestureDetector(
        onTap: () {
          changeBackgroundColor();
        },
        child: new Container(
          color: new Color.fromARGB(255, bRed, bGeen, bBlue),
          child: new Center(
            child: new GestureDetector(
                onTap: () {
                  changeTextColor();
                },
                child: new Text("Hey there",
                    style: TextStyle(
                        color: Color.fromARGB(255, red, green, blue)))),
          ),
        ),
      ),
    ));
  }
}
