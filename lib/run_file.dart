import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: getBody(),
      ),
    );
  }

  SafeArea getBody() {
    return SafeArea(
      child: Column(
        children: [
          getSoundRow(Colors.blue, 1),
          getSoundRow(Colors.red, 2),
          getSoundRow(Colors.amber, 3),
          getSoundRow(Colors.deepOrange, 4),
          getSoundRow(Colors.teal, 5),
          getSoundRow(Colors.grey, 6),
          getSoundRow(Colors.deepPurpleAccent, 7),
        ],
      ),
    );
  }

  getSoundRow(Color color, int soundPosition) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
        ),
        child: Container(
          color: color,
        ),
        onPressed: () {
          makeSound(soundPosition);
        },
      ),
    );
  }

  void makeSound(int soundPosition) {
    final player = AudioCache();
    player.play("assets_note$soundPosition.wav");
  }
}
