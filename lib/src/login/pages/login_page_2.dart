import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../common_widgets/clip_shadow_path.dart';

// Author: Suhas Shelar
// GitHub: https://github.com/shelarsuhas

class LoginPage2 extends StatefulWidget {
  static final String path = "lib/src/login/pages/login_page_2.dart";
  @override
  _LoginPage2State createState() => _LoginPage2State();
}

class _LoginPage2State extends State<LoginPage2> {
  Color blackColor = Color(0xff080907);
  bool isEmailScreen;

  @override
  void initState() {
    super.initState();
    isEmailScreen = true;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            color: Color(0xfff8f8f8),
            height: size.height -
                MediaQuery.of(context)
                    .padding
                    .top, // removes the status bar height,
            width: double.infinity,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 60.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Icon(
                            Icons.camera,
                            size: 50,
                            color: blackColor,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          RichText(
                            text: TextSpan(
                              text: 'i',
                              style: TextStyle(
                                fontSize: 20,
                                color: blackColor,
                                fontWeight: FontWeight.bold,
                              ),
                              children: [
                                TextSpan(
                                  text: 'Don\'t',
                                  style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                TextSpan(
                                  text: 'knowUI',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Stack(
                    alignment: Alignment.lerp(
                      Alignment.topCenter,
                      Alignment.bottomCenter,
                      0.0,
                    ),
                    children: <Widget>[
                      Positioned(
                        top: size.height / 2.3 + 10,
                        left: 40,
                        right: 40,
                        child: Container(
                          height: 20,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(0, 10),
                                blurRadius: 10,
                                color: Colors.black12,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 25.0,
                          right: 25.0,
                          top: 20.0,
                          bottom: 10.0,
                        ),
                        child: ClipShadowPath(
                          shadow: Shadow(
                            offset: Offset(0, 5),
                            color: Colors.black12,
                            blurRadius: 10,
                          ),
                          clipper: Clipper(),
                          child: Container(
                            height: size.height / 2.3,
                            decoration: BoxDecoration(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        right: 0,
                        child: CircleAvatar(
                          radius: 50,
                          backgroundColor: Colors.grey.shade200,
                          child: isEmailScreen
                              ? Icon(
                                  Icons.person,
                                  size: 60,
                                  color: Colors.grey.shade400,
                                )
                              : Image.asset('assets/images/covid_person.png'),
                        ),
                      ),
                      Positioned(
                        top: 120,
                        child: Opacity(
                          opacity: isEmailScreen ? 0 : 1,
                          child: Text(
                            'John Doe',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                        ),
                      ),
                      Positioned(
                        top: (size.height / 2.3) / 2,
                        width: size.width * 0.7,
                        child: TextField(
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            hintText: isEmailScreen
                                ? 'Enter your email'
                                : 'Enter your password',
                          ),
                        ),
                      ),
                      Positioned(
                        top: (size.height / 2.3) / 1.3,
                        child: isEmailScreen
                            ? Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: <Widget>[
                                  CircleAvatar(
                                    radius: 15,
                                    backgroundColor: blackColor,
                                    child: FaIcon(
                                      FontAwesomeIcons.google,
                                      size: 20,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 30,
                                  ),
                                  CircleAvatar(
                                    radius: 15,
                                    backgroundColor: blackColor,
                                    child: FaIcon(
                                      FontAwesomeIcons.twitter,
                                      size: 20,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 30,
                                  ),
                                  CircleAvatar(
                                    radius: 15,
                                    backgroundColor: blackColor,
                                    child: FaIcon(
                                      FontAwesomeIcons.facebookF,
                                      size: 20,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              )
                            : Text(
                                'Forgot password?',
                                style: TextStyle(
                                  color: blackColor.withAlpha(70),
                                ),
                              ),
                      ),
                      Positioned(
                        top: size.height / 2.3 + 5,
                        width: 120,
                        height: 40,
                        child: FlatButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(50.0),
                          ),
                          color: blackColor,
                          onPressed: () {
                            setState(() {
                              isEmailScreen = !isEmailScreen;
                            });
                          },
                          child: Text(
                            isEmailScreen ? 'NEXT' : 'SIGN IN',
                            style: TextStyle(color: Colors.white, fontSize: 14),
                          ),
                        ),
                      ),
                      Positioned(
                        top: size.height / 1.8,
                        child: Text(
                          'SIGN UP',
                          style: TextStyle(
                            color: blackColor,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Positioned(
                        top: size.height / 1.9,
                        left: 30,
                        child: Opacity(
                          opacity: isEmailScreen ? 0 : 1,
                          child: FloatingActionButton(
                            backgroundColor: blackColor,
                            onPressed: () {
                              setState(() {
                                isEmailScreen = !isEmailScreen;
                              });
                            },
                            child: Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
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

class Clipper extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    final path = Path();

    path.moveTo(0.0, size.height * 0.3);
    path.lineTo(0.0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0.0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return true;
  }
}
