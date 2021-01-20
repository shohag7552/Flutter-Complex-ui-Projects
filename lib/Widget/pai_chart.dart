import 'dart:math';

import 'package:complex_ui/constrant.dart';
import 'package:flutter/material.dart';

double total = 0;
double money = 0;

class PaiChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height / 2;
    double width = MediaQuery.of(context).size.width / 2;

    expenses.forEach((element) {
      money = money + element['ammount'];
    });
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      height: height,
      width: width,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: kBackgroundColor,
        boxShadow: customShadow,
      ),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(34.0),
            child: CustomPaint(
              child: Container(),
              foregroundPainter: PaichartPaint(),
            ),
          ),
          Center(
            child: Container(
              //height: height/2,
              width: width / 2.35,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: kBackgroundColor,
                boxShadow: [
                  BoxShadow(
                      color: Colors.blue[900].withOpacity(0.5),
                      spreadRadius: -4,
                      offset: Offset(7, 7),
                      blurRadius: 20),
                ],
              ),
              child: Center(
                  child: Text(
               '\$$money' ,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: kTextColor,
                ),
              )),
            ),
          )
        ],
      ),
    );
  }
}

class PaichartPaint extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    double radius = min(size.width / 2, size.height / 2);
    Offset center = Offset(size.width / 2, size.height / 2);

    var paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width / 2.7;

    expenses.forEach((element) {
      total += element['ammount'];
    });
    var startRadian = -pi / 2;
    for (int i = 0; i < expenses.length; i++) {
      var currentExpance = expenses[i];
      var sweepRadian = (currentExpance['ammount'] / total) * 2 * pi;
      paint.color = pieColors[i];
      canvas.drawArc(Rect.fromCircle(center: center, radius: radius),
          startRadian, sweepRadian, false, paint);
      startRadian += sweepRadian;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
