import 'package:flutter/material.dart';
import 'package:flutter_course/QuizBank.dart';

void main() => runApp(MyApp());

QuizBank quizBank = QuizBank();
List<Icon> resultsIcons = [];

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xff333333),
        body: getBody(this),
      ),
    );
  }
}

SafeArea getBody(State state) {
  return SafeArea(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: Center(
            child: Text(
              quizBank.getNextQuiz(resultsIcons).statement,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
        ),
        TextButton(
            style: ButtonStyle(
                padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.zero),
                backgroundColor: MaterialStateProperty.all(Color(0xff66B764))),
            onPressed: () {
              state.setState(() {
                createIcon();
              });
            },
            child: Text("True", style: TextStyle(color: Colors.white))),
        TextButton(
          style: ButtonStyle(
              padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.zero),
              backgroundColor: MaterialStateProperty.all(Color(0xffEF5A46))),
          onPressed: () {
            state.setState(() {
              createIcon();
            });
          },
          child: Text(
            "False",
            style: TextStyle(color: Colors.white),
          ),
        ),
        Row(
          children: resultsIcons,
        )
      ],
    ),
  );
}

void createIcon() {
  if (quizBank.checkAnswer(true)) {
    resultsIcons.add(Icon(
      Icons.check,
      color: Colors.green,
    ));
  } else {
    resultsIcons.add(Icon(
      Icons.close,
      color: Colors.red,
    ));
  }
}
