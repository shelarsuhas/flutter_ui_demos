import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterPage2 extends StatelessWidget {
  static final String path = 'lib/src/login/pages/register_page_2.dart';
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double backdropHeight = size.height / 1.3;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: size.width,
          height: size.height,
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Positioned(
                top: 0,
                child: ClipPath(
                  clipper: BottomPathClipper(),
                  child: Container(
                    width: size.width,
                    height: backdropHeight,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                          Color(0xff2b9587),
                          Color(0xff033e6b),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 60,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      'Psilogica',
                      style: GoogleFonts.pacifico(
                        fontSize: 60,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 75,
                    ),
                    _buildTextField(
                      size: size,
                      hint: 'Name',
                      prefixIcon: FontAwesomeIcons.user,
                      isPassword: false,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    _buildTextField(
                      size: size,
                      hint: 'Email',
                      prefixIcon: Icons.email,
                      isPassword: false,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    _buildTextField(
                      size: size,
                      hint: 'Password',
                      prefixIcon: Icons.vpn_key,
                      isPassword: true,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    RichText(
                      text: TextSpan(
                        text: 'Already have an account? ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                        children: [
                          TextSpan(
                            text: 'Sign In',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: backdropHeight * 0.83,
                child: FloatingActionButton(
                  heroTag: "btn_next",
                  backgroundColor: Colors.white,
                  onPressed: () {},
                  child: Icon(
                    Icons.arrow_forward,
                    size: 30,
                    color: Color(0xff21759e),
                  ),
                ),
              ),
              Positioned(
                bottom: 75,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "Sign Up using your Social Acoount",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black54,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        FloatingActionButton(
                          heroTag: "btn_facebook",
                          backgroundColor: Color(0xff0387AF),
                          onPressed: () {},
                          child: Icon(
                            FontAwesomeIcons.facebookF,
                            size: 30,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        FloatingActionButton(
                          heroTag: "btn_instagram",
                          backgroundColor: Color(0xff0387AF),
                          onPressed: () {},
                          child: Icon(
                            FontAwesomeIcons.instagram,
                            size: 30,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        FloatingActionButton(
                          heroTag: "btn_twitter",
                          backgroundColor: Color(0xff0387AF),
                          onPressed: () {},
                          child: Icon(
                            FontAwesomeIcons.twitter,
                            size: 30,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container _buildTextField(
      {@required Size size,
      @required String hint,
      @required IconData prefixIcon,
      @required bool isPassword}) {
    return Container(
      width: size.width / 1.1,
      height: 50,
      child: TextField(
        obscureText: isPassword,
        style: TextStyle(
          fontSize: 18,
          color: Colors.white,
        ),
        cursorColor: Colors.white,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: const BorderRadius.all(
              const Radius.circular(50.0),
            ),
            borderSide: BorderSide(
              width: 0,
              style: BorderStyle.none,
            ),
          ),
          filled: true,
          hintStyle: TextStyle(
            color: Colors.white,
          ),
          hintText: hint,
          fillColor: Color(0xff5EADB8),
          prefixIcon: Icon(
            prefixIcon,
            color: Colors.white,
            size: 20,
          ),
        ),
      ),
    );
  }
}

class BottomPathClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final Path path = Path();
    path.lineTo(0.0, size.height);

    var endPoint = Offset(size.width, size.height);
    var controlPoint = Offset(size.width * 0.5, size.height * 0.75);
    path.quadraticBezierTo(
        controlPoint.dx, controlPoint.dy, endPoint.dx, endPoint.dy);

    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0.0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
