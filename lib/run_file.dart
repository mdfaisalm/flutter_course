import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());
// void main() {
//   runApp(MyApp());
// }

int currentBallPosition = 1;

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.red,
          title: Text("Ask Me Anything"),
          centerTitle: true,
        ),
        body: Center(
          child: MyStateFullWidget(),
        ),
      ),
    );
  }
}

class MyStateFullWidget extends StatefulWidget {
  const MyStateFullWidget({Key? key}) : super(key: key);

  @override
  _MyStateFullWidgetState createState() => _MyStateFullWidgetState();
}

class _MyStateFullWidgetState extends State<MyStateFullWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextButton(
                  onPressed: () {
                    findAnswer(this);
                  },
                  child: Image.asset("images/ball$currentBallPosition.png")),
            )),
      ],
    );
  }
}

findAnswer(State state) {
  state.setState(() {
    currentBallPosition = Random().nextInt(5) + 1;
  });
}
