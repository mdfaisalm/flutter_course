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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: double.infinity,
                width: 100,
                color: Color(0xfff44133),
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    color: Color(0xffFFEC38),
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    color: Color(0xff4BB14F),
                  ),
                ],
              ),
              Container(
                height: double.infinity,
                width: 100,
                color: Color(0xff1B97F3),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
