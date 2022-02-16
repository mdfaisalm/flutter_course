import 'package:flutter/material.dart';

class HeightInputWidget extends StatelessWidget {
  int _height = 100;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      margin: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
          color: Color(0xff323244),
          borderRadius: BorderRadiusDirectional.all(Radius.circular(10))),
      child: Column(
        children: [Text("data")],
      ),
    );
  }

  int get height => _height;
}
