import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_ui_demos/src/detail_screen/pages/detail_page_1.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// Author: Suhas Shelar
// GitHub: https://github.com/shelarsuhas

class HomePage1 extends StatefulWidget {
  static final String path = 'lib/src/home/pages/home_1.dart';
  @override
  _HomePage1State createState() => _HomePage1State();
}

class _HomePage1State extends State<HomePage1> {
  Color textColorPrimary = Colors.black.withAlpha(180);
  Color textColorSecondary = Colors.black.withAlpha(120);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            color: Color(0xffDBE6E8),
            height: size.height -
                MediaQuery.of(context)
                    .padding
                    .top, // removes the status bar height
            width: size.width,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: <Widget>[
                  Align(
                    alignment: Alignment.topLeft,
                    child: RichText(
                      textAlign: TextAlign.left,
                      text: TextSpan(
                          text: 'Hello ',
                          style: TextStyle(
                            fontSize: 30,
                            color: textColorPrimary,
                            letterSpacing: 0.1,
                          ),
                          children: [
                            TextSpan(
                              text: 'Annie!',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ]),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Anything I can help you with?',
                      style: TextStyle(fontSize: 16, color: textColorSecondary),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    children: <Widget>[
                      SizedBox(
                        width: 30,
                      ),
                      Neumorphic(
                        style: NeumorphicStyle(
                            depth: 4,
                            intensity: 5,
                            lightSource: LightSource.topLeft,
                            shape: NeumorphicShape.flat,
                            boxShape: NeumorphicBoxShape.circle()),
                        child: Container(
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(shape: BoxShape.circle),
                          child: Center(
                            child: FaIcon(
                              FontAwesomeIcons.bolt,
                              size: 30,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          RichText(
                            text: TextSpan(
                              text: '28.6',
                              style: TextStyle(
                                fontSize: 30,
                                color: textColorPrimary,
                              ),
                              children: [
                                TextSpan(
                                  text: ' Kw/h',
                                  style: TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Power consumption for today',
                            style: TextStyle(
                              color: textColorSecondary,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: <Widget>[
                        _buildCard(
                          size: size,
                          title: 'Bathroom',
                          numberOfDevices: 2,
                          imagePath: 'assets/images/bath.png',
                        ),
                        _buildCard(
                          size: size,
                          title: 'Living Room',
                          numberOfDevices: 5,
                          imagePath: 'assets/images/sofa.png',
                        ),
                        _buildCard(
                          size: size,
                          title: 'Kitchen',
                          numberOfDevices: 3,
                          imagePath: 'assets/images/refrigerator.png',
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildCard({
    @required Size size,
    @required String title,
    @required int numberOfDevices,
    @required String imagePath,
  }) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => DetailPage1()),
          );
        },
        child: Neumorphic(
          style: NeumorphicStyle(
            depth: 4,
            intensity: 5,
            lightSource: LightSource.topLeft,
            shape: NeumorphicShape.flat,
          ),
          child: Container(
            width: size.width / 1.7,
            height: size.height / 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 30,
                ),
                Image.asset(
                  imagePath,
                  scale: 3.0,
                ),
                SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 30.0,
                  ),
                  child: Text(
                    title,
                    style: TextStyle(
                        color: textColorPrimary,
                        fontSize: 30,
                        fontWeight: FontWeight.w300),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 30.0,
                  ),
                  child: Text(
                    '$numberOfDevices Devices',
                    style: TextStyle(
                        color: textColorSecondary,
                        fontSize: 16,
                        fontWeight: FontWeight.w300),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
