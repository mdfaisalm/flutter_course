import 'package:flutter_course/quiz.dart';
import 'package:flutter/material.dart';

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

  Quiz getNextQuiz(List<Icon> iconsList) {
    if (_currentQuizPosition >= _quizList.length) {
      _currentQuizPosition = 0;
      iconsList.clear();
    }
    return _quizList[_currentQuizPosition];
  }

  bool checkAnswer(bool answer) {
    return answer == _quizList[_currentQuizPosition++].answer;
  }
}
