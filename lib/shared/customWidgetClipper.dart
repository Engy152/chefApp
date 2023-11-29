import 'package:flutter/cupertino.dart';

class MyCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

     path.lineTo(0, size.height);
     path.quadraticBezierTo(size.width / 4, size.height -40, size.width / 2, size.height - 20);
     path.quadraticBezierTo(3 / 4 * size.width, size.height, size.width, size.height - 30);
     path.lineTo(size.width, 0);
     //path.lineTo(size.width, size.height);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    throw false;
  }
}
