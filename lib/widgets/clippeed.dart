import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';

class wavecliper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    debugPrint(size.width.toString());
    var path = new Path();
    path.lineTo(0, size.height);
    var firsts = Offset(size.width / 25, size.height - 20);
    var firste = Offset(size.width, 10);
    path.quadraticBezierTo(firsts.dx, firsts.dy, firste.dx, firste.dy);
    var seconds = Offset(size.width / 27, 0);
    var seconde = Offset(size.width, size.height / 10);
    path.quadraticBezierTo(seconds.dx, seconds.dy, seconde.dx, seconde.dy);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    return true;
  }
}
