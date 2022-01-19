import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Stack(
            children: [
              Center(
                child: Container(
                  height: 270,
                  width: 400,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    color: Colors.red,
                  ),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Container(
                      padding: const EdgeInsets.only(left: 30, bottom: 20),
                      child: const Text(
                        'Mr. Bean',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                child: CustomPaint(
                  painter: facePainter(),
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class facePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.style = PaintingStyle.fill;
    paint.color = const Color(0xfff0c4a1);

    var facePath = Path();
    facePath.moveTo(size.width * 0.54, size.height * 0.65);

    facePath.quadraticBezierTo(size.width * 0.49, size.height * 0.585,
        size.width * 0.36, size.height * 0.53);

    facePath.quadraticBezierTo(size.width * 0.28, size.height * 0.5,
        size.width * 0.28, size.height * 0.455);

    facePath.quadraticBezierTo(size.width * 0.13, size.height * 0.39,
        size.width * 0.2, size.height * 0.35);

    facePath.quadraticBezierTo(size.width * 0.23, size.height * 0.32,
        size.width * 0.3, size.height * 0.35);

    facePath.lineTo(size.width * 0.3, size.height * 0.3);
    facePath.lineTo(size.width * 0.4, size.height * 0.26);
    facePath.lineTo(size.width * 0.78, size.height * 0.32);
    facePath.lineTo(size.width * 0.82, size.height * 0.36);
    facePath.lineTo(size.width * 0.8, size.height * 0.43);

    facePath.quadraticBezierTo(size.width * 0.89, size.height * 0.4,
        size.width * 0.93, size.height * 0.44);

    facePath.quadraticBezierTo(size.width * 0.95, size.height * 0.49,
        size.width * 0.767, size.height * 0.517);

    facePath.quadraticBezierTo(size.width * 0.71, size.height * 0.565,
        size.width * 0.687, size.height * 0.57);

    facePath.quadraticBezierTo(size.width * 0.533, size.height * 0.584,
        size.width * 0.568, size.height * 0.634);

    facePath.quadraticBezierTo(size.width * 0.542, size.height * 0.648,
        size.width * 0.54, size.height * 0.65);

    canvas.drawPath(facePath, paint);

    var faceStroke = Paint();
    faceStroke.style = PaintingStyle.stroke;
    faceStroke.strokeWidth = 6;
    faceStroke.color = Colors.black;
    canvas.drawPath(facePath, faceStroke);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    throw UnimplementedError();
  }
}
