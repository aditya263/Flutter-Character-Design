import 'package:flutter/material.dart';

class hairPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = Colors.black;
    paint.style = PaintingStyle.fill;

    Path headPath = Path();
    headPath.moveTo(size.width * 0.315, size.height * 0.42);

    headPath.quadraticBezierTo(size.width * 0.17, size.height * 0.23,
        size.width * 0.36, size.height * 0.26);

    headPath.quadraticBezierTo(size.width * 0.42, size.height * 0.21,
        size.width * 0.63, size.height * 0.25);

    headPath.quadraticBezierTo(size.width * 0.77, size.height * 0.27,
        size.width * 0.81, size.height * 0.31);

    headPath.quadraticBezierTo(size.width * 0.99, size.height * 0.34,
        size.width * 0.75, size.height * 0.47);

    headPath.quadraticBezierTo(size.width * 0.75, size.height * 0.45,
        size.width * 0.76, size.height * 0.43);

    headPath.quadraticBezierTo(size.width * 0.8, size.height * 0.41,
        size.width * 0.77, size.height * 0.37);

    headPath.quadraticBezierTo(size.width * 0.76, size.height * 0.35,
        size.width * 0.77, size.height * 0.33);

    headPath.quadraticBezierTo(size.width * 0.61, size.height * 0.34,
        size.width * 0.39, size.height * 0.26);

    headPath.quadraticBezierTo(size.width * 0.37, size.height * 0.30,
        size.width * 0.33, size.height * 0.31);

    headPath.quadraticBezierTo(size.width * 0.29, size.height * 0.32,
        size.width * 0.315, size.height * 0.42);

    canvas.drawPath(headPath, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
