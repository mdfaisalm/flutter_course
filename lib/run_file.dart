import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

int rightDiceImage = 1;
int leftDiceImage = 1;

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
          title: Text("Diece"),
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
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextButton(
                  onPressed: () {
                    rollBothDices(this);
                  },
                  child: Image.asset("images/dice$leftDiceImage.png")),
            )),
        Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextButton(
                  onPressed: () {
                    rollBothDices(this);
                  },
                  child: Image.asset("images/dice$rightDiceImage.png")),
            )),
      ],
    );
  }
}

rollBothDices(State state) {
  state.setState(() {
    rightDiceImage = Random().nextInt(6) + 1;
    leftDiceImage = Random().nextInt(6) + 1;
  });
}
