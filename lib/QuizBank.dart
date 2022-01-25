import 'package:flutter_course/quiz.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class QuizBank {
  final List<Quiz> _quizList = [
    Quiz("a", true),
    Quiz("b", true),
    Quiz("c", false),
    Quiz("d", false),
    Quiz("e", true),
    Quiz("f", false),
    Quiz("g", true),
    Quiz("h", false),
    Quiz("i", false),
    Quiz("j", true)
  ];

  int _currentQuizPosition = 0;

  Quiz getNextQuiz() {
    return _quizList[_currentQuizPosition];
  }

  bool checkAnswer(
      bool answer, BuildContext context, List<Icon> iconsList, State state) {
    bool result = false;
    if (answer == _quizList[_currentQuizPosition].answer) {
      result = true;
    }
    if (_currentQuizPosition == _quizList.length - 1) {
      Alert(
          context: context,
          closeFunction: () {
            state.setState(() {
              iconsList.clear();
              Navigator.pop(context);
            });
          },
          onWillPopActive: true,
          title: "Exam Completed",
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text("Your exam completed. Following is your result.",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  )),
              Row(
                children: iconsList,
              ),
            ],
          ),
          buttons: [
            DialogButton(
              onPressed: () {
                state.setState(() {
                  iconsList.clear();
                  Navigator.pop(context);
                });
              },
              child: Text(
                "RESTART",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            )
          ]).show();
      _currentQuizPosition = 0;
    } else {
      _currentQuizPosition++;
    }
    return result;
  }
}
