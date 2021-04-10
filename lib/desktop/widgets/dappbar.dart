import 'package:flutter/material.dart';

import 'textButton.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  Size get preferredSize => new Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    var space = SizedBox(width: screenWidth * 0.015);
    return Container(
      // height: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            children: [
              Image.asset('assets/images/logo.png'),
              Text(
                "Clover Bank",
                style: TextStyle(
                  fontFamily: 'Beautiful',
                  fontSize: screenWidth * 0.02,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
          space,
          space,
          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              MyTextButton("Other Service", () {}),
              space,
              MyTextButton("Loans", () {}),
              space,
              MyTextButton("Deposit Cards", () {}),
              space,
              MyTextButton("News and Rating", () {}),
            ],
          ),
          space,
          space,
          ElevatedButton(
            onPressed: () {},
            child: Text(
              "Online Bank",
              style: TextStyle(
                fontFamily: 'Raleway',
                fontSize: screenWidth * 0.013,
                fontWeight: FontWeight.bold,
              ),
              softWrap: true,
            ),
          ),
        ],
      ),
    );
  }
}
