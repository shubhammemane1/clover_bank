import 'package:flutter/material.dart';
import 'package:hovering/hovering.dart';

class MyTextButton extends StatelessWidget {
  final String name;
  final Function function;

  MyTextButton(
    this.name,
    this.function,
  );

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return HoverButton(
      hoverColor: Colors.transparent,
      highlightElevation: 0,
      onpressed: function,
      splashColor: Colors.transparent,
      hoverPadding: EdgeInsets.all(2),
      color: Colors.transparent,
      focusElevation: 0,
      elevation: 0,
      hoverElevation: 0,
      hoverShape: Border(
        bottom: BorderSide(
          width: 2,
          color: Colors.lightGreen,
        ),
      ),
      child: Text(
        name,
        style: TextStyle(
            fontFamily: "Raleway",
            fontWeight: FontWeight.bold,
            fontSize: screenWidth * 0.013),
      ),
    );
  }
}
