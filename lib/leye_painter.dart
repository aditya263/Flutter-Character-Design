import 'package:flutter/material.dart';

class lEye extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = Colors.white;

    canvas.drawCircle(
        Offset(size.width * 0.654, size.height * 0.443), 27.5, paint);

    var strokePaint = Paint();
    strokePaint.style = PaintingStyle.stroke;
    strokePaint.color = Colors.black;
    strokePaint.strokeWidth = 3;

    canvas.drawCircle(
        Offset(size.width * 0.654, size.height * 0.443), 27.5, strokePaint);

    var irisPaint = Paint();
    irisPaint.style = PaintingStyle.fill;
    irisPaint.color = Colors.black;

    canvas.drawOval(
        Rect.fromCenter(
            center: Offset(size.width * 0.6, size.height * 0.438),
            width: 10,
            height: 16),
        irisPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
