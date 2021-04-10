import 'package:flutter/material.dart';

class MAppBar extends StatelessWidget implements PreferredSizeWidget {
  Size get preferredSize => new Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      // centerTitle: true,
      title: Container(
        padding: EdgeInsets.all(50),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/logo.png',
              width: size.width * 0.1,
            ),
            Text(
              'Clover Bank',
              style: TextStyle(
                fontFamily: 'Beautiful',
                fontSize: size.width * 0.04,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}
