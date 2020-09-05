import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_ui_demos/src/detail_screen/widgets/arc_painter.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// Author: Suhas Shelar
// GitHub: https://github.com/shelarsuhas

class DetailPage1 extends StatefulWidget {
  static final String path = 'lib/src/detail_screen/pages/detail_page_1.dart';
  @override
  _DetailPage1State createState() => _DetailPage1State();
}

class _DetailPage1State extends State<DetailPage1> {
  Color textColorPrimary = Colors.black.withAlpha(180);
  Color textColorSecondary = Colors.black.withAlpha(120);
  bool isChecked = false;
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
              padding: const EdgeInsets.symmetric(
                vertical: 10.0,
                horizontal: 25.0,
              ),
              child: Column(
                children: <Widget>[
                  SizedBox(height: 20),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Living Room',
                      style: TextStyle(
                        color: textColorPrimary,
                        fontSize: 30,
                        letterSpacing: 0.1,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      _buildButton(
                          true, FontAwesomeIcons.thermometerHalf, 'Temp'),
                      _buildButton(false, FontAwesomeIcons.sun, 'Light'),
                      _buildButton(false, FontAwesomeIcons.wifi, 'Internet'),
                      _buildButton(false, FontAwesomeIcons.plus, 'Add'),
                    ],
                  ),
                  SizedBox(
                    height: 70,
                  ),
                  Container(
                    width: size.width / 1.7,
                    height: size.width / 1.7,
                    child: CustomPaint(
                      foregroundPainter: ArcPainter(
                          lineColor: Color(0xffDBE6E8),
                          completeColor: Colors.blueGrey.shade200,
                          completePercent: 33,
                          width: 5.0),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Neumorphic(
                          style: NeumorphicStyle(
                            depth: 7,
                            intensity: 4,
                            lightSource: LightSource.topLeft,
                            shape: NeumorphicShape.flat,
                            boxShape: NeumorphicBoxShape.circle(),
                          ),
                          child: Center(
                            child: Text(
                              '27.0 °C',
                              style: TextStyle(
                                color: textColorPrimary,
                                fontSize: 35,
                                letterSpacing: 0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 50),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('Current temerature'),
                          SizedBox(height: 10),
                          Text(
                            '18.5',
                            style: TextStyle(
                              fontSize: 25,
                              color: textColorPrimary,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('Turn on/off'),
                          SizedBox(height: 10),
                          NeumorphicSwitch(
                            height: 30,
                            isEnabled: true,
                            value: isChecked,
                            onChanged: (value) {
                              setState(
                                () {
                                  isChecked = value;
                                },
                              );
                            },
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  // NeumorphicButton(
                  //   style: NeumorphicStyle(
                  //     surfaceIntensity: 0.15,
                  //     shape: NeumorphicShape.concave,
                  //     color: Colors.blueGrey,
                  //   ),
                  //   onPressed: () {},
                  //   child: Text('Set Temperature'),
                  // )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildButton(bool isRaised, IconData iconData, String title) {
    return Column(
      children: <Widget>[
        Neumorphic(
          style: NeumorphicStyle(
            depth: isRaised ? 3 : -3,
            intensity: 2,
            lightSource: LightSource.topLeft,
            shape: NeumorphicShape.flat,
          ),
          child: Container(
            width: 60,
            height: 60,
            child: Icon(
              iconData,
              size: 25,
            ),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          title,
          style: TextStyle(
            color: textColorPrimary,
            fontSize: 15,
            letterSpacing: 0,
          ),
        )
      ],
    );
  }
}
