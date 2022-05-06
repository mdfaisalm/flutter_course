import 'package:flutter/material.dart';

class HeightInputWidget extends StatelessWidget {
  Slider slider;

  HeightInputWidget(this.slider);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Color(0xff323244),
          borderRadius: BorderRadiusDirectional.all(Radius.circular(10))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Height"),
          Row(
            crossAxisAlignment: CrossAxisAlignment.baseline,
            mainAxisAlignment: MainAxisAlignment.center,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Text(
                slider.value.toString(),
                style: TextStyle(fontSize: 30),
              ),
              Text(
                "cm",
                style: TextStyle(fontSize: 15),
              ),
            ],
          ),
          slider
        ],
      ),
    );
  }
}
