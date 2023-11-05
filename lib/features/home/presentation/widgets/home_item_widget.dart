import 'package:flutter/material.dart';

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Circle

    Paint paintFill1 = Paint()
      ..color = const Color.fromARGB(255, 255, 255, 255)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.5286561, 0);
    path_1.cubicTo(
        size.width * 0.7401186,
        0,
        size.width * 0.9889042,
        size.height * 0.1355474,
        size.width * 0.9889042,
        size.height * 0.5161799);
    path_1.cubicTo(
        size.width * 0.9889042,
        size.height * 0.7276423,
        size.width * 0.9493607,
        size.height * 0.9965168,
        size.width * 0.5793014,
        size.height * 0.9965168);
    path_1.cubicTo(size.width * 0.3678389, size.height * 0.9965168, 0,
        size.height * 0.8987154, 0, size.height * 0.5286561);
    path_1.cubicTo(size.width * 0.0411294, size.height * 0.2150573,
        size.width * 0.1585968, 0, size.width * 0.5286561, 0);
    path_1.close();

    canvas.drawPath(path_1, paintFill1);

    // Circle

    Paint paintStroke1 = Paint()
      ..color = const Color.fromARGB(255, 255, 184, 69)
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.03
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    canvas.drawPath(path_1, paintStroke1);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
