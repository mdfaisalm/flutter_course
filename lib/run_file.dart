import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue,
        body: SafeArea(
          child: Container(
            height: 400,
            width: 300,
            color: Colors.deepOrange,
            padding: EdgeInsets.all(40),
            margin: EdgeInsets.fromLTRB(10, 20, 30, 40),
            child: Text(
              "Hello",
            ),
          ),
        ),
      ),
    );
  }
}
