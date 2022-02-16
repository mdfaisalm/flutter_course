import 'package:flutter/material.dart';
import 'package:flutter_course/BMI/HeightInputWidget.dart';
import 'package:flutter_course/story_bank.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'BMI/BGContainer.dart';
import 'BMI/GenderContainer.dart';

void main() => runApp(Destini());

class Destini extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: StoryPage(),
    );
  }
}

StoryBrain storyBrain = StoryBrain();

class StoryPage extends StatefulWidget {
  _StoryPageState createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  @override
  Widget build(BuildContext context) {
    HeightInputWidget heightInputWidget = HeightInputWidget();
    return Scaffold(
        backgroundColor: Color(0xff1D2136),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: BGContainer(
                        bgColor: Color(0xff323244),
                        child: GenderContainer(
                            iconData: FontAwesomeIcons.mars, text: "Male"),
                        onClick: () {},
                      ),
                    ),
                    Expanded(
                      child: BGContainer(
                        bgColor: Color(0xff323244),
                        child: GenderContainer(
                            iconData: FontAwesomeIcons.mars, text: "FeMale"),
                        onClick: () {},
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: BGContainer(
                  bgColor: Color(0xff323244),
                  onClick: () {},
                  child: HeightInputWidget(),
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
