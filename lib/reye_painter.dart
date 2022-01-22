import 'package:flutter/material.dart';

class rEye extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = Colors.white;

    canvas.drawCircle(Offset(size.width * 0.43, size.height * 0.42), 28, paint);

    var strokePaint = Paint();
    strokePaint.style = PaintingStyle.stroke;
    strokePaint.color = Colors.black;
    strokePaint.strokeWidth = 3;

    canvas.drawCircle(
        Offset(size.width * 0.43, size.height * 0.42), 28, strokePaint);

    var irisPaint = Paint();
    irisPaint.style = PaintingStyle.fill;
    irisPaint.color = Colors.black;

    canvas.drawOval(
        Rect.fromCenter(
            center: Offset(size.width * 0.377, size.height * 0.411),
            width: 10,
            height: 20),
        irisPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
