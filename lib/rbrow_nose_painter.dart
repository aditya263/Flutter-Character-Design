import 'dart:math';

import 'package:flutter/material.dart';

class rBrowNose extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var nosePaint = Paint();
    nosePaint.color = const Color(0xfff0c4a1);

    var rBrowPaint = Paint();
    rBrowPaint.style = PaintingStyle.stroke;
    rBrowPaint.color = Colors.black;
    rBrowPaint.strokeWidth = 3;

    Path rBrowPath = Path();
    rBrowPath.moveTo(size.width * 0.76, size.height * 0.42);
    rBrowPath.quadraticBezierTo(size.width * 0.795, size.height * 0.38,
        size.width * 0.706, size.height * 0.36);
    rBrowPath.quadraticBezierTo(size.width * 0.65, size.height * 0.35,
        size.width * 0.6, size.height * 0.39);
    rBrowPath.quadraticBezierTo(size.width * 0.565, size.height * 0.42,
        size.width * 0.568, size.height * 0.467);
    rBrowPath.quadraticBezierTo(size.width * 0.603, size.height * 0.55,
        size.width * 0.49, size.height * 0.53);
    rBrowPath.quadraticBezierTo(size.width * 0.462, size.height * 0.521,
        size.width * 0.46, size.height * 0.5);
    rBrowPath.quadraticBezierTo(size.width * 0.415, size.height * 0.496,
        size.width * 0.42, size.height * 0.476);
    rBrowPath.quadraticBezierTo(size.width * 0.44, size.height * 0.455,
        size.width * 0.477, size.height * 0.478);
    rBrowPath.moveTo(size.width * 0.572, size.height * 0.482);
    rBrowPath.quadraticBezierTo(size.width * 0.614, size.height * 0.477,
        size.width * 0.617, size.height * 0.497);
    rBrowPath.quadraticBezierTo(size.width * 0.618, size.height * 0.515,
        size.width * 0.574, size.height * 0.513);

    canvas.drawPath(rBrowPath, nosePaint);
    canvas.drawPath(rBrowPath, rBrowPaint);
    canvas.drawArc(
        Rect.fromCenter(
            center: Offset(size.width * 0.35, size.height * 0.46),
            width: 55,
            height: 55),
        pi,
        pi,
        false,
        nosePaint);

    canvas.drawPath(rBrowPath, nosePaint);
    canvas.drawPath(rBrowPath, rBrowPaint);
    canvas.drawArc(
        Rect.fromCenter(
            center: Offset(size.width * 0.35, size.height * 0.46),
            width: 55,
            height: 55),
        pi,
        pi,
        false,
        rBrowPaint);

    var bigBrowPaint = Paint();
    bigBrowPaint.color = Colors.black;

    Path bigBrowPath = Path();
    bigBrowPath.moveTo(size.width * 0.709, size.height * 0.375);
    bigBrowPath.quadraticBezierTo(size.width * 0.648, size.height * 0.356,
        size.width * 0.70, size.height * 0.352);
    bigBrowPath.quadraticBezierTo(size.width * 0.754, size.height * 0.354,
        size.width * 0.753, size.height * 0.375);
    bigBrowPath.quadraticBezierTo(size.width * 0.752, size.height * 0.388,
        size.width * 0.709, size.height * 0.375);

    canvas.drawPath(bigBrowPath, bigBrowPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
