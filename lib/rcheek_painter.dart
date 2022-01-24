import 'package:flutter/material.dart';

class rCheek extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var cheekStroke = Paint();
    cheekStroke.strokeWidth = 3;
    cheekStroke.color = Colors.black;
    cheekStroke.style = PaintingStyle.stroke;

    var cheekPaint = Paint();
    cheekPaint.color = const Color(0xfff0c4a1);

    Path path = Path();
    path.moveTo(size.width * 0.617, size.height * 0.489);
    path.quadraticBezierTo(size.width * 0.633, size.height * 0.452,
        size.width * 0.72, size.height * 0.47);
    canvas.drawPath(path, cheekPaint);
    canvas.drawPath(path, cheekStroke);

    var molePaint = Paint();
    molePaint.color = Colors.black;

    canvas.drawCircle(Offset(size.width*0.69, size.height*0.48), 5, molePaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
