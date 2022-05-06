import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_course/BMI/BMIResult.dart';
import 'package:flutter_course/BMI/HeightInputWidget.dart';
import 'package:flutter_course/BMI/calculateBMI.dart';
import 'package:flutter_course/story_bank.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'BGContainer.dart';
import 'GenderContainer.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
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

enum Gender { MALE, FEMALE }

class _StoryPageState extends State<StoryPage> {
  int _height = 120;
  int _weight = 40;
  int _age = 10;
  Color normalColor = Color(0xFF1D1E33);
  Color selectedColor = Color(0xFF111328);
  Gender selectedGender = Gender.MALE;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
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
                        bgColor: selectedGender == Gender.MALE
                            ? selectedColor
                            : normalColor,
                        child: GenderContainer(
                            iconData: FontAwesomeIcons.mars, text: "Male"),
                        onClick: () {
                          setState(() {
                            selectedGender = Gender.MALE;
                          });
                        },
                      ),
                    ),
                    Expanded(
                      child: BGContainer(
                        bgColor: selectedGender == Gender.FEMALE
                            ? selectedColor
                            : normalColor,
                        child: GenderContainer(
                            iconData: FontAwesomeIcons.mars, text: "FeMale"),
                        onClick: () {
                          setState(() {
                            selectedGender = Gender.FEMALE;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: BGContainer(
                  bgColor: Color(0xff323244),
                  onClick: () {},
                  child: HeightInputWidget(Slider(
                      value: _height.toDouble(),
                      min: 80,
                      max: 190,
                      onChanged: (double newValue) {
                        setState(() {
                          _height = newValue.toInt();
                        });
                      })),
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: BGContainer(
                        bgColor: Color(0xff323244),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                                child: SizedBox(
                              height: double.infinity,
                            )),
                            Expanded(
                              flex: 2,
                              child: FittedBox(
                                child: Text(
                                  "Weight".toUpperCase(),
                                ),
                              ),
                            ),
                            Expanded(
                                child: SizedBox(
                              height: double.infinity,
                            )),
                            Expanded(
                              flex: 4,
                              child: FittedBox(
                                child: Text(
                                  _weight.toString(),
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Expanded(
                                child: SizedBox(
                              height: double.infinity,
                            )),
                            Expanded(
                              flex: 4,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  RawMaterialButton(
                                    elevation: 0.0,
                                    child: Icon(
                                      FontAwesomeIcons.minus,
                                      size: 14,
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        _weight--;
                                        if (_weight < 0) {
                                          _weight = 0;
                                        }
                                      });
                                    },
                                    constraints: BoxConstraints.tightFor(
                                      width: 60.0,
                                      height: 60.0,
                                    ),
                                    shape: CircleBorder(),
                                    fillColor: Color(0xFF4C4F5E),
                                  ),
                                  RawMaterialButton(
                                    elevation: 0.0,
                                    child: Icon(
                                      FontAwesomeIcons.plus,
                                      size: 14,
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        _weight++;
                                      });
                                    },
                                    constraints: BoxConstraints.tightFor(
                                      width: 60.0,
                                      height: 60.0,
                                    ),
                                    shape: CircleBorder(),
                                    fillColor: Color(0xFF4C4F5E),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                                child: SizedBox(
                              height: double.infinity,
                            ))
                          ],
                        ),
                        onClick: () {},
                      ),
                    ),
                    Expanded(
                      child: BGContainer(
                        bgColor: Color(0xff323244),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                                child: SizedBox(
                              height: double.infinity,
                            )),
                            Expanded(
                              flex: 2,
                              child: FittedBox(
                                child: Text(
                                  "Age".toUpperCase(),
                                ),
                              ),
                            ),
                            Expanded(
                                child: SizedBox(
                              height: double.infinity,
                            )),
                            Expanded(
                              flex: 4,
                              child: FittedBox(
                                child: Text(
                                  _age.toString(),
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Expanded(
                                child: SizedBox(
                              height: double.infinity,
                            )),
                            Expanded(
                              flex: 4,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  RawMaterialButton(
                                    elevation: 0.0,
                                    child: Icon(
                                      FontAwesomeIcons.minus,
                                      size: 14,
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        _age--;
                                        if (_age < 0) {
                                          _age = 0;
                                        }
                                      });
                                    },
                                    constraints: BoxConstraints.tightFor(
                                      width: 60.0,
                                      height: 60.0,
                                    ),
                                    shape: CircleBorder(),
                                    fillColor: Color(0xFF4C4F5E),
                                  ),
                                  RawMaterialButton(
                                    elevation: 0.0,
                                    child: Icon(
                                      FontAwesomeIcons.plus,
                                      size: 14,
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        _age++;
                                      });
                                    },
                                    constraints: BoxConstraints.tightFor(
                                      width: 60.0,
                                      height: 60.0,
                                    ),
                                    shape: CircleBorder(),
                                    fillColor: Color(0xFF4C4F5E),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                                child: SizedBox(
                              height: double.infinity,
                            ))
                          ],
                        ),
                        onClick: () {},
                      ),
                    )
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  calculateBMI cal =
                      calculateBMI(height: _height, weight: _weight);
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return BMIResult(
                        result: cal.getResultDescription(),
                        value: cal.getBMIFigure(),
                        description: cal.getInterpretation());
                  }));
                },
                child: Container(
                  width: double.infinity,
                  color: Colors.pinkAccent,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Calculate",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          backgroundColor: Colors.pinkAccent),
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
