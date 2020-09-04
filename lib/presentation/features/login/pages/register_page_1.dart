import 'package:flutter/material.dart';

import '../widgets/login_register_1_common.dart';
import 'login_page_1.dart';

// Author: Suhas Shelar
// GitHub: https://github.com/shelarsuhas

class RegisterPage1 extends StatelessWidget {
  static final String path =
      "lib/presentation/login/pages/register_page_1.dart";
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
              _buildHeaderLayout(context: context),
              _buildMiddleLayout(size),
              _buildBottomLayout(),
            ],
          ),
        ),
      ),
    );
  }

  Expanded _buildHeaderLayout({@required BuildContext context}) {
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
                'Register',
                style: TextStyle(
                  fontSize: 40,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              width: 150,
              height: 60,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(100),
                  bottomLeft: Radius.circular(100),
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
                      MaterialPageRoute(builder: (context) => LoginPage1()));
                },
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  bottomLeft: Radius.circular(50),
                )),
                child: Text(
                  "Login",
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
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Email',
                        prefixIcon: Icon(Icons.email),
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

Expanded _buildBottomLayout() {
  return Expanded(
    child: Stack(
      children: <Widget>[
        getFooterSecondaryClipPath(),
        getFooterPrimaryClipPath(),
      ],
    ),
  );
}
