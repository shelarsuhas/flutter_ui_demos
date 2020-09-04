import 'package:flutter/material.dart';

// Author: Suhas Shelar
// GitHub: https://github.com/shelarsuhas

Widget getHeaderPrimaryClipPath() {
  return ClipPath(
    clipper: TopClipperPrimary(),
    child: Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: FractionalOffset.topLeft,
          end: FractionalOffset.topRight,
          colors: [
            Color(0xfff9995e),
            Color(0xffb55a50),
          ],
        ),
      ),
    ),
  );
}

Widget getHeaderSecondaryClipPath() {
  return ClipPath(
    clipper: TopClipperSecondary(),
    child: Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(color: Color(0x4dfbb394)),
    ),
  );
}

Widget getFooterPrimaryClipPath() {
  return ClipPath(
    clipper: BottomClipperPrimary(),
    child: Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: FractionalOffset.bottomLeft,
          end: FractionalOffset.topRight,
          colors: [
            Color(0xff0be7f6),
            Color(0xff217fd1),
          ],
        ),
      ),
    ),
  );
}

Widget getFooterSecondaryClipPath() {
  return ClipPath(
    clipper: BottomClipperSecondary(),
    child: Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(color: Color(0xffDBF4FD)),
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
