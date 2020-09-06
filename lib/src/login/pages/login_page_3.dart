import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:polygon_clipper/polygon_border.dart';

// Author: Suhas Shelar
// GitHub: https://github.com/shelarsuhas

class LoginPage3 extends StatefulWidget {
  static final String path = "lib/src/login/pages/login_page_3.dart";
  @override
  _LoginPage3State createState() => _LoginPage3State();
}

class _LoginPage3State extends State<LoginPage3> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            width: size.width,
            height: size.height,
            child: Stack(
              children: <Widget>[
                Image.asset(
                  'assets/images/snow.png',
                  width: size.width,
                  height: size.height,
                  fit: BoxFit.cover,
                ),
                // Positioned.fill(
                //   child: Container(
                //     color: Colors.black26,
                //   ),
                // ),
                // Positioned.fill(
                //   child: BackdropFilter(
                //     filter: ImageFilter.blur(
                //       sigmaX: 1,
                //       sigmaY: 1,
                //     ),
                //     child: Container(
                //       color: Colors.black.withAlpha(30),
                //     ),
                //   ),
                // ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 75),
                    child: Container(
                      width: 60,
                      height: 60,
                      decoration: ShapeDecoration(
                        shape: PolygonBorder(
                          sides: 6,
                          borderRadius: 1.0,
                          border: BorderSide(color: Colors.white, width: 2),
                        ),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 160, left: 100),
                    child: Container(
                      width: 60,
                      height: 60,
                      decoration: ShapeDecoration(
                        shape: PolygonBorder(
                          sides: 6,
                          borderRadius: 1.0,
                          border: BorderSide(color: Colors.white, width: 2),
                        ),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 160, right: 100),
                    child: Container(
                      width: 60,
                      height: 60,
                      decoration: ShapeDecoration(
                        shape: PolygonBorder(
                          sides: 6,
                          borderRadius: 1.0,
                          border: BorderSide(color: Colors.white, width: 2),
                        ),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 100.0,
                    ),
                    child: Container(
                      width: 120,
                      height: 120,
                      decoration: ShapeDecoration(
                        shape: PolygonBorder(
                          sides: 6,
                          borderRadius: 1.0,
                          border: BorderSide(color: Colors.white, width: 3),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'H',
                          style: TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: new EdgeInsets.only(top: size.height / 2.5),
                  child: Align(
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        _buildTextField(
                          size: size,
                          hint: 'email',
                          prefixIcon: Icons.email,
                          isPassword: false,
                        ),
                        _buildTextField(
                          size: size,
                          hint: 'password',
                          prefixIcon: Icons.lock,
                          isPassword: true,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        ClipPath(
                          clipper: Sky(),
                          child: Material(
                            color: Colors.white,
                            child: InkWell(
                              onTap: () {},
                              child: Container(
                                width: size.width / 1.3,
                                height: 50,
                                color: Colors.white,
                                child: Center(
                                  child: Text(
                                    'Log In',
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container _buildTextField(
      {Size size, String hint, IconData prefixIcon, bool isPassword}) {
    return Container(
      width: size.width / 1.3,
      height: 50,
      child: CustomPaint(
        painter: BeveledBorderPainter(
          lineColor: Colors.white,
          width: 2,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35),
          child: TextField(
            cursorColor: Colors.white,
            keyboardType: TextInputType.text,
            obscureText: isPassword,
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
            ),
            decoration: InputDecoration(
              prefixIcon: Icon(
                prefixIcon,
                color: Colors.white,
              ),
              hintText: hint,
              contentPadding:
                  EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
              hintStyle: TextStyle(
                color: Colors.white,
              ),
              border: InputBorder.none,
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              disabledBorder: InputBorder.none,
            ),
          ),
        ),
      ),
    );
  }
}

class BeveledBorderPainter extends CustomPainter {
  Color lineColor;
  double width;
  BeveledBorderPainter({this.lineColor, this.width});
  @override
  void paint(Canvas canvas, Size size) {
    double h = size.height;
    double w = size.width;

    Paint line = new Paint()
      ..color = lineColor
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke
      ..strokeWidth = width;

    double xOffset = 0.1;

    canvas.drawLine(Offset(w * xOffset, h), Offset(w - w * xOffset, h), line);
    canvas.drawLine(Offset(w - w * xOffset, h), Offset(w, h / 2), line);
    canvas.drawLine(Offset(w, h / 2), Offset(w - w * xOffset, 0), line);
    canvas.drawLine(Offset(w - w * xOffset, 0), Offset(w * xOffset, 0.0), line);
    canvas.drawLine(Offset(w * xOffset, 0.0), Offset(0.0, h / 2), line);
    canvas.drawLine(Offset(0.0, h / 2), Offset(w * xOffset, h), line);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

class Sky extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    double h = size.height;
    double w = size.width;

    double xOffset = 0.1;
    Path path = Path()
      ..lineTo(w * xOffset, h)
      ..lineTo(w - w * xOffset, h)
      ..lineTo(w, h / 2)
      ..lineTo(w - w * xOffset, 0)
      ..lineTo(w * xOffset, 0.0)
      ..lineTo(0.0, h / 2)
      ..lineTo(w * xOffset, h);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return true;
  }
}
