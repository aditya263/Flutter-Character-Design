import 'package:flutter/material.dart';

class eyebrowPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.style = PaintingStyle.stroke;
    paint.strokeWidth = 3;

    Path eyebrowPath = Path();
    eyebrowPath.moveTo(size.width*0.338, size.height*0.352);
    eyebrowPath.quadraticBezierTo(size.width*0.336, size.height*0.29, size.width*0.435, size.height*0.323);
    eyebrowPath.quadraticBezierTo(size.width*0.5, size.height*0.35, size.width*0.51, size.height*0.40);

    var eyebrowPaint = Paint();
    eyebrowPaint.color = Colors.black;

    var browBallPath = Path();
    browBallPath.moveTo(size.width*0.394, size.height*0.327);
    browBallPath.quadraticBezierTo(size.width*0.344, size.height*0.318, size.width*0.38, size.height*0.309);
    browBallPath.quadraticBezierTo(size.width*0.425, size.height*0.301, size.width*0.445, size.height*0.32);
    browBallPath.quadraticBezierTo(size.width*0.455, size.height*0.335, size.width*0.394, size.height*0.327);

    canvas.drawPath(browBallPath, eyebrowPaint);
    canvas.drawPath(eyebrowPath, paint);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
