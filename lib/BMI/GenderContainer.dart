import 'package:flutter/material.dart';

class GenderContainer extends StatelessWidget {
  const GenderContainer({
    required this.iconData,
    required this.text,
  });

  final IconData iconData;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: FittedBox(
            fit: BoxFit.fitHeight,
            child: Icon(
              iconData,
              color: Colors.white,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 10),
          child: Text(
            text.toUpperCase(),
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
