import 'package:flutter/material.dart';
import 'package:hovering/hovering.dart';

class MTextButton extends StatelessWidget {
  final String name;
  final Function function;

  MTextButton(
    this.name,
    this.function,
  );

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
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
            fontSize: size.width * 0.038),
      ),
    );
  }
}
