import 'package:flutter/material.dart';
import 'package:flutter_course/QuizBank.dart';

void main() => runApp(MyApp());

QuizBank quizBank = QuizBank();
List<Icon> resultsIcons = [];

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xff333333),
        body: BodyWidget(),
      ),
    );
  }
}

class BodyWidget extends StatefulWidget {
  const BodyWidget({Key? key}) : super(key: key);

  @override
  _BodyWidgetState createState() => _BodyWidgetState();
}

class _BodyWidgetState extends State<BodyWidget> {
  @override
  Widget build(BuildContext context) {
    return getBody(this, context);
  }
}

SafeArea getBody(State state, BuildContext context) {
  void createIcon(bool answer) {
    if (quizBank.checkAnswer(answer, context, resultsIcons, state)) {
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

  return SafeArea(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: Center(
            child: Text(
              quizBank.getNextQuiz().statement,
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
                createIcon(true);
              });
            },
            child: Text("True", style: TextStyle(color: Colors.white))),
        TextButton(
          style: ButtonStyle(
              padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.zero),
              backgroundColor: MaterialStateProperty.all(Color(0xffEF5A46))),
          onPressed: () {
            state.setState(() {
              createIcon(false);
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
