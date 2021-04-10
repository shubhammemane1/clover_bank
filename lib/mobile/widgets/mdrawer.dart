import 'package:flutter/material.dart';

import 'mTextButton.dart';

class MDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    var space = SizedBox(
      height: size.height * 0.025,
    );

    return Drawer(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: size.height * 0.15),
        child: Column(
          children: [
            MTextButton("Other Service", () {}),
            space,
            MTextButton("Loans", () {}),
            space,
            MTextButton("Deposit Cards", () {}),
            space,
            MTextButton("News and Rating", () {}),
          ],
        ),
      ),
    );
  }
}
