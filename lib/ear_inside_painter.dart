import 'package:flutter/material.dart';

class earInside extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = Colors.black;

    Path path = Path();
    path.moveTo(size.width * 0.297, size.height * 0.411);
    path.lineTo(size.width * 0.298, size.height * 0.488);
    path.quadraticBezierTo(size.width * 0.265, size.height * 0.339,
        size.width * 0.222, size.height * 0.357);
    path.quadraticBezierTo(size.width * 0.17, size.height * 0.37,
        size.width * 0.227, size.height * 0.414);
    path.quadraticBezierTo(size.width * 0.294, size.height * 0.46,
        size.width * 0.297, size.height * 0.427);
    path.quadraticBezierTo(size.width * 0.288, size.height * 0.415,
        size.width * 0.284, size.height * 0.42);
    path.quadraticBezierTo(size.width * 0.29, size.height * 0.451,
        size.width * 0.238, size.height * 0.415);
    path.quadraticBezierTo(size.width * 0.19, size.height * 0.378,
        size.width * 0.221, size.height * 0.368);
    path.quadraticBezierTo(size.width * 0.256, size.height * 0.352,
        size.width * 0.297, size.height * 0.411);
    canvas.drawPath(path, paint);

    Path lEarPath = Path();
    lEarPath.moveTo(size.width * 0.768, size.height * 0.477);
    lEarPath.quadraticBezierTo(size.width * 0.797, size.height * 0.439,
        size.width * 0.882, size.height * 0.433);
    lEarPath.quadraticBezierTo(size.width * 0.95, size.height * 0.44,
        size.width * 0.87, size.height * 0.484);
    lEarPath.quadraticBezierTo(size.width * 0.733, size.height * 0.53,
        size.width * 0.773, size.height * 0.485);
    lEarPath.quadraticBezierTo(size.width * 0.79, size.height * 0.479,
        size.width * 0.776, size.height * 0.489);
    lEarPath.quadraticBezierTo(size.width * 0.746, size.height * 0.521,
        size.width * 0.862, size.height * 0.482);
    lEarPath.quadraticBezierTo(size.width * 0.933, size.height * 0.445,
        size.width * 0.868, size.height * 0.447);
    lEarPath.quadraticBezierTo(size.width * 0.8, size.height * 0.458,
        size.width * 0.775, size.height * 0.477);

    canvas.drawPath(lEarPath, paint);

    Path mouthEnd = Path();
    mouthEnd.moveTo(size.width * 0.605, size.height * 0.52);
    mouthEnd.quadraticBezierTo(size.width * 0.65, size.height * 0.517,
        size.width * 0.628, size.height * 0.534);
    mouthEnd.lineTo(size.width * 0.605, size.height * 0.52);

    mouthEnd.moveTo(size.width * 0.405, size.height * 0.52);
    mouthEnd.quadraticBezierTo(size.width * 0.399, size.height * 0.506,
        size.width * 0.426, size.height * 0.514);

    canvas.drawPath(mouthEnd, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
