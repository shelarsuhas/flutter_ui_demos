import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_ui_demos/src/login/pages/login_page_4.dart';

// Author: Suhas Shelar
// GitHub: https://github.com/shelarsuhas

class ForgotPasswordPage1 extends StatelessWidget {
  static final String path = "lib/src/login/pages/forgot_password_page_1.dart";
  final Color pageColor = Color(0xff1A4F8B);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Theme(
        data: ThemeData(
          primaryColor: pageColor,
        ),
        child: Scaffold(
          appBar: AppBar(),
          body: SingleChildScrollView(
            child: Container(
              width: size.width,
              height: size.height,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  SvgPicture.asset(
                    'assets/svgs/forgot_password_image_1.svg',
                    width: size.width / 2,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Forgot Password',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  _buildTextField(false),
                  SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20.0,
                    ),
                    child: Container(
                      width: double.infinity,
                      height: 50,
                      child: FlatButton(
                        color: pageColor,
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(7),
                          ),
                        ),
                        child: Text(
                          'Reset',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: size.height / 4),
                  InkWell(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginPage4(),
                        ),
                      );
                    },
                    child: RichText(
                      text: TextSpan(
                        text: 'Already have an account? ',
                        style: TextStyle(
                          color: Color(0xffD8D8D8),
                          fontSize: 16,
                        ),
                        children: [
                          TextSpan(
                            text: 'Login Here',
                            style: TextStyle(
                              color: pageColor,
                              fontSize: 16,
                            ),
                          )
                        ],
                      ),
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

  Widget _buildTextField(bool isPassword) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: Container(
        height: 50,
        child: TextField(
          obscureText: isPassword,
          style: TextStyle(
            color: pageColor,
          ),
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(10.0),
            prefixIcon: Icon(
              isPassword ? Icons.lock_outline : Icons.person,
              color: pageColor,
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(7),
              ),
              borderSide: BorderSide(
                color: pageColor,
                width: 1.5,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(7),
              ),
              borderSide: BorderSide(
                color: pageColor,
                width: 1.5,
              ),
            ),
            hintText: isPassword ? 'password' : 'example@email.com',
            hintStyle: TextStyle(
              color: pageColor,
            ),
          ),
        ),
      ),
    );
  }
}
