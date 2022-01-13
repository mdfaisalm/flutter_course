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
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            verticalDirection: VerticalDirection.up,
            children: [
              Container(
                height: 100,
                width: 50,
                color: Colors.deepOrange,
                child: Text(
                  "Hello 1",
                ),
              ),
              Container(
                height: 120,
                width: 100,
                color: Colors.amber,
                child: Text(
                  "Hello 2",
                ),
              ),
              Container(
                height: 40,
                width: 10,
                color: Colors.black26,
                child: Text(
                  "Hello 3",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
