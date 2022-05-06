import 'package:flutter/material.dart';

class BGContainer extends StatelessWidget {
  BGContainer(
      {required this.bgColor, required this.child, required this.onClick});

  final Color bgColor;
  final Widget child;
  final Function onClick;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onClick(),
      child: Container(
        padding: EdgeInsets.all(10.0),
        margin: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
            color: bgColor,
            borderRadius: BorderRadiusDirectional.all(Radius.circular(10))),
        child: child,
      ),
    );
  }
}
