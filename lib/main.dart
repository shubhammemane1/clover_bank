import 'package:clover_bank/desktop/deskHome.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'mobile/mobileHome.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.light,
        accentTextTheme: TextTheme(
            bodyText1: TextStyle(
              fontFamily: "Beautiful People Personal Use",
              fontSize: 100,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline,
            ),
            bodyText2: TextStyle(fontFamily: 'Raleway')),
        primarySwatch: Colors.lightGreen,
      ),
      debugShowCheckedModeBanner: false,
      home: ScreenTypeLayout(
        breakpoints: ScreenBreakpoints(
          tablet: 600,
          desktop: 950,
          watch: 300,
        ),
        desktop: DesktopHome(),
        mobile: MobileHome(),
        tablet: MobileHome(),
        // desktop: Container(color: Colors.red),
        // watch: Container(color: Colors.purple),
      ),
    );
  }
}
