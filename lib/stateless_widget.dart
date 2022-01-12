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
        backgroundColor: Colors.blue[900],
        body: Center(
          child: Image(
            width: 200,
            height: 200,
            image: AssetImage(
              "a/a.png",
            ),
          )
          /*          child: Image(
            width: 200,
            height: 200,
            image: NetworkImage(
              "https://www.computerhope.com/jargon/a/android.png",
            ),
          )*/
          ,
        ),
        appBar: AppBar(
          backgroundColor: Colors.amberAccent[100],
          title: Text(
            "Allah",
          ),
        ),
      ),
    );
  }
}
