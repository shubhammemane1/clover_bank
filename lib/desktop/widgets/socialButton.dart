import 'package:flutter/material.dart';

class SocialButton extends StatelessWidget {
  final String socialIcon;
  final String socialName;

  SocialButton(this.socialIcon, this.socialName);

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    var headline1 = TextStyle(
      color: Colors.white,
      fontSize: screenWidth * 0.008,
      fontFamily: "Raleway",
      fontWeight: FontWeight.bold,
    );
    return Container(
      padding: EdgeInsets.all(screenWidth * 0.001),
      margin: EdgeInsets.all(screenWidth * 0.002),
      width: screenWidth * 0.11,
      height: screenWidth * 0.01,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(40),
      ),
      child: ListTile(
          onTap: () {},
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                socialIcon,
                height: screenWidth * 0.015,
                color: Colors.white,
              ),
              Text(
                socialName,
                overflow: TextOverflow.ellipsis,
                style: headline1,
              ),
            ],
          )),
    );
  }
}
