import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_course/story_bank.dart';

//TODO: Step 15 - Run the app and see if you can see the screen update with the first story. Delete this TODO if it looks as you expected.

void main() => runApp(Destini());

class Destini extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: StoryPage(),
    );
  }
}

//TODO: Step 9 - Create a new storyBrain object from the StoryBrain class.
StoryBrain storyBrain = StoryBrain();

class StoryPage extends StatefulWidget {
  _StoryPageState createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                        child: Container(
                      color: Colors.blue,
                      // child: Text("ABC"),
                    )),
                    Expanded(
                        child: Container(
                      color: Colors.red,
                    ))
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.purple,
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                        child: Container(
                      color: Colors.orange,
                    )),
                    Expanded(
                        child: Container(
                      color: Colors.green,
                    ))
                  ],
                ),
              )
            ],
          ),
        ));
  }
}

//TODO: Step 24 - Run the app and try to figure out what code you need to add to this file to make the story change when you press on the choice buttons.

//TODO: Step 29 - Run the app and test it against the Story Outline to make sure you've completed all the steps. The code for the completed app can be found here: https://github.com/londonappbrewery/destini-challenge-completed/
