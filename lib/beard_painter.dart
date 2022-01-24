import 'package:flutter/material.dart';

class beard extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var beardPaint = Paint();
    beardPaint.color = const Color(0xffd19779);
    beardPaint.style = PaintingStyle.fill;
    canvas.rotate(0.2);

    canvas.drawOval(
        Rect.fromCenter(
            center: Offset(size.width * 0.722, size.height * 0.463),
            width: size.width * 0.28,
            height: size.height * 0.07),
        beardPaint);

    var mouthPaint = Paint();
    mouthPaint.color = Colors.black;
    mouthPaint.style = PaintingStyle.stroke;
    mouthPaint.strokeWidth = 3;

    Path mouthPath = Path();
    mouthPath.moveTo(size.width * 0.625, size.height * 0.468);
    mouthPath.quadraticBezierTo(size.width * 0.73, size.height * 0.505,
        size.width * 0.834, size.height * 0.461);
    canvas.drawPath(mouthPath, mouthPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
