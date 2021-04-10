import 'dart:html' as html;

import 'package:clover_bank/models/links.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hovering/hovering.dart';
import 'package:lottie/lottie.dart';

import 'widgets/dappbar.dart';
import 'widgets/socialButton.dart';

import 'package:clover_bank/models/lottie.dart';

class DesktopHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    var headline1 = TextStyle(
      color: Colors.black,
      fontSize: screenWidth * 0.03,
      fontFamily: "Raleway",
      fontWeight: FontWeight.bold,
    );
    var headline2 = TextStyle(
      color: Colors.lightGreen,
      fontSize: screenWidth * 0.03,
      fontFamily: "Beautiful",
      fontWeight: FontWeight.bold,
    );
    var headline3 = TextStyle(
      color: Colors.black,
      fontSize: screenWidth * 0.013,
      fontFamily: "Raleway",
      fontWeight: FontWeight.bold,
    );
    var headline4 = TextStyle(
      color: Colors.grey,
      fontSize: screenWidth * 0.008,
      fontFamily: "Raleway",
      fontWeight: FontWeight.bold,
    );
    var headline5 = TextStyle(
      color: Colors.grey.shade800,
      fontSize: screenWidth * 0.008,
      fontFamily: "Raleway",
      fontWeight: FontWeight.bold,
    );

    return Scaffold(
      appBar: MyAppBar(),
      body: SingleChildScrollView(
        primary: true,
        child: Column(
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Container(
                        width: screenWidth / 3,
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
                                        text:
                                            ' Your Money and Data are Always safe.  ',
                                        style: headline1,
                                      )
                                    ]),
                              ]),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: screenWidth / 2,
                    child: Lottie.network(
                      'https://assets5.lottiefiles.com/datafiles/mOOETXHBHySSsiU/data.json',
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: screenWidth - screenWidth / 4,
              child: GridView.builder(
                shrinkWrap: true,
                itemCount: lottie.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3, childAspectRatio: 3 / 2),
                itemBuilder: (BuildContext ctx, int i) {
                  return Container(
                      // width: ,
                      margin: EdgeInsets.all(20),
                      // padding: EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Lottie.network(lottie[i].imageAsset,
                              height: screenWidth / 20),
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
            SelectableText(
              "Download the Clover Bank Clover Mobile App Now.",
              style: headline3,
            ),
            Container(
              width: screenWidth / 2.5,
              child: SelectableText(
                "In Orer to use the Clover bank app  for the first time  , customers are need to successfully complete the self enrollment process , log in to the Mobile Banking App , and aceept the  Digital Banking Agreement and Electronic Communication Discolsure.",
                style: headline4,
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              height: screenWidth * 0.02,
            ),
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                height: screenHeight * 0.065,
                width: screenWidth * 0.35,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    SocialButton('assets/images/apple.png', "App Store"),
                    SocialButton('assets/images/play.png', "Play Store"),
                    SocialButton('assets/images/store.png', "Microsoft Store")
                  ],
                ),
              ),
            ),
            SizedBox(
              height: screenHeight * 0.05,
            ),
            Container(
              color: Colors.grey,
              height: screenHeight * 0.3,
              width: screenWidth,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        'assets/images/logo.png',
                        scale: screenHeight * 0.008,
                      ),
                      SelectableText(
                        "Clover Bank",
                        style: TextStyle(
                          color: Colors.grey.shade800,
                          fontSize: screenWidth * 0.025,
                          fontFamily: "Beautiful",
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: screenWidth / 3,
                        child: GridView.builder(
                          shrinkWrap: true,
                          itemCount: links.length,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 4,
                                  childAspectRatio: screenWidth * 0.002,
                                  crossAxisSpacing: screenHeight * 0.05),
                          itemBuilder: (ctx, i) {
                            return Container(
                              width: screenWidth * 0.001,
                              child: HoverContainer(
                                cursor: MouseCursor.defer,
                                child: Center(
                                  child: Text(
                                    links[i].tabs,
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
                          },
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
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
                                    size: screenWidth * 0.01,
                                    color: Colors.grey.shade800,
                                  ),
                                  onPressed: () {}),
                              IconButton(
                                  icon: Icon(
                                    FontAwesomeIcons.facebook,
                                    size: screenWidth * 0.01,
                                    color: Colors.grey.shade800,
                                  ),
                                  onPressed: () {}),
                              IconButton(
                                  icon: Icon(
                                    FontAwesomeIcons.googlePlus,
                                    size: screenWidth * 0.01,
                                    color: Colors.grey.shade800,
                                  ),
                                  onPressed: () {}),
                              IconButton(
                                  icon: Icon(
                                    FontAwesomeIcons.youtube,
                                    size: screenWidth * 0.01,
                                    color: Colors.grey.shade800,
                                  ),
                                  onPressed: () {}),
                            ],
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

///clock
////// https://assets2.lottiefiles.com/packages/lf20_4htoEB.json
///
///
///key
///https://assets4.lottiefiles.com/packages/lf20_4zdVGo.json
///uplink
///https://assets8.lottiefiles.com/packages/lf20_GwRqA3.json
///secure
///https://assets10.lottiefiles.com/packages/lf20_zFMmwE.json
///cards
///https://assets1.lottiefiles.com/packages/lf20_bzilqcun.json
