import 'package:flutter/material.dart';
import 'package:flutter_ui_demos/presentation/features/login/pages/register_page_1.dart';

import '../widgets/login_register_1_common.dart';

// Author: Suhas Shelar
// GitHub: https://github.com/shelarsuhas

class LoginPage1 extends StatefulWidget {
  static final String path = "lib/presentation/login/pages/login_page_1.dart";
  @override
  _LoginPage1State createState() => _LoginPage1State();
}

class _LoginPage1State extends State<LoginPage1> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: size.height,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              _buildHeaderLayout(),
              _buildMiddleLayout(size),
              _buildBottomLayout(context: context),
            ],
          ),
        ),
      ),
    );
  }

  Expanded _buildHeaderLayout() {
    return Expanded(
      child: Stack(
        children: <Widget>[
          getHeaderSecondaryClipPath(),
          getHeaderPrimaryClipPath(),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Text(
                'Login',
                style: TextStyle(
                  fontSize: 40,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Expanded _buildMiddleLayout(Size size) {
    return Expanded(
      child: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              width: size.width / 1.2,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(100),
                  bottomRight: Radius.circular(100),
                ),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 40,
                      color: Colors.black12),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 60, 20),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Username',
                        prefixIcon: Icon(Icons.person),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Password',
                        prefixIcon: Icon(Icons.vpn_key),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 0,
            bottom: 0,
            right: 35,
            child: Container(
              width: 65,
              height: 65,
              child: RaisedButton(
                onPressed: () {},
                color: Color(0xff20e5ac),
                child: Icon(Icons.arrow_forward),
                shape: CircleBorder(),
              ),
            ),
          )
        ],
      ),
    );
  }
}

Expanded _buildBottomLayout({@required BuildContext context}) {
  return Expanded(
    child: Stack(
      children: <Widget>[
        getFooterSecondaryClipPath(),
        getFooterPrimaryClipPath(),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 30, 0),
          child: Align(
            alignment: Alignment.topRight,
            child: Text(
              'Forgot?',
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey.shade500,
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Container(
            width: 150,
            height: 60,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(100),
                bottomRight: Radius.circular(100),
              ),
              boxShadow: [
                BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 40,
                    color: Colors.black12),
              ],
            ),
            child: RaisedButton(
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => RegisterPage1()));
              },
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                topRight: Radius.circular(50),
                bottomRight: Radius.circular(50),
              )),
              child: Text(
                "Register",
                style: TextStyle(
                  fontSize: 25,
                  color: Color(0xfff9995e),
                ),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

class TopClipperPrimary extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    final path = Path();
    path.lineTo(0.0, size.height);

    var endPoint = Offset(size.width * 0.1 - 10, size.height - 70 - 10);
    var controlPoint = Offset(size.width * 0.1 - 10, size.height - 10);
    path.quadraticBezierTo(
        controlPoint.dx, controlPoint.dy, endPoint.dx, endPoint.dy);

    endPoint = Offset(size.width * 0.55 - 10, size.height * 0.3 - 10);
    controlPoint = Offset(size.width * 0.15 - 10, size.height * 0.25 - 10);
    path.quadraticBezierTo(
        controlPoint.dx, controlPoint.dy, endPoint.dx, endPoint.dy);

    endPoint = Offset(size.width * 0.85 - 10, size.height * 0.20 - 10);
    controlPoint = Offset(size.width * 0.80 - 10, size.height * 0.30 - 10);
    path.quadraticBezierTo(
        controlPoint.dx, controlPoint.dy, endPoint.dx, endPoint.dy);

    endPoint = Offset(size.width * 0.90 - 10, size.height * 0.0);
    controlPoint = Offset(size.width * 0.90 - 10, size.height * 0.1);
    path.quadraticBezierTo(
        controlPoint.dx, controlPoint.dy, endPoint.dx, endPoint.dy);

    path.lineTo(size.width * 0.95 - 10, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return false;
  }
}

class TopClipperSecondary extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    final path = Path();
    path.lineTo(0.0, size.height);

    var endPoint = Offset(size.width * 0.1, size.height - 70);
    var controlPoint = Offset(size.width * 0.1 - 10, size.height);
    path.quadraticBezierTo(
        controlPoint.dx, controlPoint.dy, endPoint.dx, endPoint.dy);

    endPoint = Offset(size.width * 0.55, size.height * 0.3);
    controlPoint = Offset(size.width * 0.15 - 10, size.height * 0.25);
    path.quadraticBezierTo(
        controlPoint.dx, controlPoint.dy, endPoint.dx, endPoint.dy);

    endPoint = Offset(size.width * 0.85, size.height * 0.20);
    controlPoint = Offset(size.width * 0.80, size.height * 0.30);
    path.quadraticBezierTo(
        controlPoint.dx, controlPoint.dy, endPoint.dx, endPoint.dy);

    endPoint = Offset(size.width * 0.90, size.height * 0.0);
    controlPoint = Offset(size.width * 0.90, size.height * 0.1);
    path.quadraticBezierTo(
        controlPoint.dx, controlPoint.dy, endPoint.dx, endPoint.dy);

    path.lineTo(size.width * 0.95, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return false;
  }
}

class BottomClipperPrimary extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final Path path = Path();

    path.moveTo(size.width * 0.1 + 10, size.height);

    var endPoint = Offset(size.width * 0.2 + 10, size.height * 0.9 + 10);
    var controlPoint = Offset(size.width * 0.1 + 10, size.height * 0.88 + 10);
    path.quadraticBezierTo(
        controlPoint.dx, controlPoint.dy, endPoint.dx, endPoint.dy);

    endPoint = Offset(size.width * 0.85 + 10, size.height * 0.45 + 10);
    controlPoint = Offset(size.width * 0.85 + 10, size.height * 0.9 + 10);
    path.quadraticBezierTo(
        controlPoint.dx, controlPoint.dy, endPoint.dx, endPoint.dy);

    endPoint = Offset(size.width, size.height * 0.1 + 10);
    controlPoint = Offset(size.width * 0.9 + 10, size.height * 0.1 + 10);
    path.quadraticBezierTo(
        controlPoint.dx, controlPoint.dy, endPoint.dx, endPoint.dy);

    path.lineTo(size.width, size.height * 0.1 + 10);
    path.lineTo(size.width, size.height);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

class BottomClipperSecondary extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final Path path = Path();

    path.moveTo(size.width * 0.1, size.height);

    var endPoint = Offset(size.width * 0.2, size.height * 0.9);
    var controlPoint = Offset(size.width * 0.1, size.height * 0.88);
    path.quadraticBezierTo(
        controlPoint.dx, controlPoint.dy, endPoint.dx, endPoint.dy);

    endPoint = Offset(size.width * 0.85, size.height * 0.45);
    controlPoint = Offset(size.width * 0.85, size.height * 0.9);
    path.quadraticBezierTo(
        controlPoint.dx, controlPoint.dy, endPoint.dx, endPoint.dy);

    endPoint = Offset(size.width, size.height * 0.1);
    controlPoint = Offset(size.width * 0.9, size.height * 0.1);
    path.quadraticBezierTo(
        controlPoint.dx, controlPoint.dy, endPoint.dx, endPoint.dy);

    path.lineTo(size.width, size.height * 0.1);
    path.lineTo(size.width, size.height);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
