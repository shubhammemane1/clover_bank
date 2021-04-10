import 'package:clover_bank/models/links.dart';
import 'package:clover_bank/models/lottie.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hovering/hovering.dart';
import 'package:lottie/lottie.dart';

import 'widgets/mAppBar.dart';
import 'widgets/mdrawer.dart';
import 'widgets/msocialButton.dart';

class MobileHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    var headline1 = TextStyle(
      color: Colors.black,
      fontSize: size.width * 0.07,
      fontFamily: "Raleway",
      fontWeight: FontWeight.bold,
    );
    var headline2 = TextStyle(
      color: Colors.lightGreen,
      fontSize: size.width * 0.07,
      fontFamily: "Beautiful",
      fontWeight: FontWeight.bold,
    );
    var headline3 = TextStyle(
      color: Colors.black,
      fontSize: size.width * 0.035,
      fontFamily: "Raleway",
      fontWeight: FontWeight.bold,
    );
    var headline4 = TextStyle(
      color: Colors.grey.shade700,
      fontSize: size.width * 0.02,
      fontFamily: "Raleway",
      fontWeight: FontWeight.bold,
    );
    var headline5 = TextStyle(
      color: Colors.grey.shade800,
      fontSize: size.width * 0.015,
      fontFamily: "Raleway",
      fontWeight: FontWeight.bold,
    );
    var headline6 = TextStyle(
      color: Colors.grey.shade700,
      fontSize: size.width * 0.015,
      fontFamily: "Raleway",
      fontWeight: FontWeight.bold,
    );
    return Scaffold(
      appBar: MAppBar(),
      drawer: MDrawer(),
      body: SingleChildScrollView(
        primary: true,
        child: Column(
          children: [
            Center(
              child: Container(
                padding: EdgeInsets.all(size.width * 0.04),
                width: size.width / 1.3,
                child: RichText(
                  text: TextSpan(
                    text: 'With',
                    style: headline1,
                    children: <TextSpan>[
                      TextSpan(
                        text: " Clover Bank ",
                        style: headline2,
                        children: <TextSpan>[
                          TextSpan(
                            text: ' Your Money and Data are Always safe.  ',
                            style: headline1,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Row(
              children: [
                Container(
                  width: size.width * 0.5,
                  padding: EdgeInsets.all(size.width * 0.06),
                  child: SelectableText(
                    'The Many Benifits of Mobile Banking',
                    style: headline3,
                  ),
                ),
                Container(
                  alignment: Alignment.centerRight,
                  child: Lottie.network(
                      'https://assets5.lottiefiles.com/datafiles/mOOETXHBHySSsiU/data.json',
                      width: size.width * 0.5),
                ),
              ],
            ),
            Container(
              width: size.width - size.width / 4,
              child: GridView.builder(
                shrinkWrap: true,
                itemCount: lottie.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1, childAspectRatio: 14 / 5),
                itemBuilder: (BuildContext ctx, int i) {
                  return Container(
                      // width: ,
                      margin: EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Lottie.network(lottie[i].imageAsset,
                              height: size.width / 20),
                          SelectableText(
                            lottie[i].name,
                            style: headline3,
                          ),
                          SelectableText(
                            lottie[i].info,
                            style: headline4,
                          ),
                        ],
                      ));
                },
              ),
            ),
            Container(
              height: size.width * 0.03,
            ),
            SelectableText(
              "Download the Clover Bank Clover Mobile App Now.",
              style: headline3,
            ),
            Container(
              width: size.width * 0.9,
              child: SelectableText(
                "In Orer to use the Clover bank app  for the first time  , customers are need to successfully complete the self enrollment process , log in to the Mobile Banking App , and aceept the  Digital Banking Agreement and Electronic Communication Discolsure.",
                style: headline4,
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              height: size.width * 0.03,
            ),
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                height: size.height * 0.045,
                width: size.width * 0.65,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    MSocialButton('assets/images/apple.png', "App Store"),
                    MSocialButton('assets/images/play.png', "Play Store"),
                    MSocialButton('assets/images/store.png', "Microsoft Store")
                  ],
                ),
              ),
            ),
            Container(
              height: size.width * 0.03,
            ),
            Container(
              color: Colors.grey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/logo.png',
                        width: size.width * 0.05,
                      ),
                      Text(
                        'Clover Bank',
                        style: TextStyle(
                          fontFamily: 'Beautiful',
                          color: Colors.grey.shade700,
                          fontSize: size.width * 0.03,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                  Container(
                    width: size.width * 0.8,
                    child: GridView.builder(
                        shrinkWrap: true,
                        itemCount: links.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 4,
                            childAspectRatio: size.width * 0.008,
                            crossAxisSpacing: 20),
                        itemBuilder: (ctx, i) {
                          return Container(
                            width: size.width * 0.001,
                            child: HoverContainer(
                              cursor: MouseCursor.defer,
                              child: Center(
                                child: Text(
                                  links[i].tabs,
                                  style: headline6,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              hoverDecoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    width: 2,
                                    color: Colors.lightGreen,
                                  ),
                                ),
                              ),
                            ),
                          );
                        }),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SelectableText(
                        "\u00a9 2019 clover  Bank , a Division of Customer Bank . All Rights Reserved",
                        style: headline5,
                      ),
                      Row(
                        children: [
                          IconButton(
                              icon: Icon(
                                FontAwesomeIcons.twitter,
                                size: size.width * 0.02,
                                color: Colors.grey.shade800,
                              ),
                              onPressed: () {}),
                          IconButton(
                              icon: Icon(
                                FontAwesomeIcons.facebook,
                                size: size.width * 0.02,
                                color: Colors.grey.shade800,
                              ),
                              onPressed: () {}),
                          IconButton(
                              icon: Icon(
                                FontAwesomeIcons.googlePlus,
                                size: size.width * 0.02,
                                color: Colors.grey.shade800,
                              ),
                              onPressed: () {}),
                          IconButton(
                              icon: Icon(
                                FontAwesomeIcons.youtube,
                                size: size.width * 0.02,
                                color: Colors.grey.shade800,
                              ),
                              onPressed: () {}),
                        ],
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
