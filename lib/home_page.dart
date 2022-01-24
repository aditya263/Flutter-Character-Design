import 'package:flutter/material.dart';
import 'package:mr_bean/rbrow_nose_painter.dart';
import 'package:mr_bean/rcheek_painter.dart';
import 'package:mr_bean/reye_painter.dart';

import 'beard_painter.dart';
import 'leye_painter.dart';
import 'rbrow_painter.dart';
import 'face_painter.dart';
import 'hair_painter.dart';

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
              ),
              Container(
                child: CustomPaint(
                  painter: hairPainter(),
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                  ),
                ),
              ),
              Container(
                child: CustomPaint(
                  painter: rbrowPainter(),
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                  ),
                ),
              ),
              Container(
                child: CustomPaint(
                  painter: rEye(),
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                  ),
                ),
              ),
              Container(
                child: CustomPaint(
                  painter: beard(),
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                  ),
                ),
              ),
              Container(
                child: CustomPaint(
                  painter: rBrowNose(),
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                  ),
                ),
              ),
              Container(
                child: CustomPaint(
                  painter: lEye(),
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                  ),
                ),
              ),
              Container(
                child: CustomPaint(
                  painter: rCheek(),
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
