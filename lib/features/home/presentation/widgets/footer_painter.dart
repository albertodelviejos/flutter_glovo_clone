import 'package:flutter/material.dart';

class FooterPainter extends CustomPainter {
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
    path_1.moveTo(size.width * 0.3103925, size.height * 0.0334604);
    path_1.cubicTo(
        size.width * 0.5985068,
        size.height * 0.0334604,
        size.width * 1.0307031,
        size.height * 0.1222423,
        size.width * 1.0307031,
        size.height * 0.3506117);
    path_1.cubicTo(
        size.width * 1.0307031,
        size.height * 0.4773696,
        size.width * 0.8146050,
        size.height * 0.6676604,
        size.width * 0.3103925,
        size.height * 0.6676604);
    path_1.cubicTo(
        size.width * 0.0222533,
        size.height * 0.6676604,
        size.width * -0.4099431,
        size.height * 0.5725150,
        size.width * -0.4099431,
        size.height * 0.3506117);
    path_1.cubicTo(
        size.width * -0.4099431,
        size.height * 0.2237512,
        size.width * -0.1938449,
        size.height * 0.0334604,
        size.width * 0.3103925,
        size.height * 0.0334604);
    path_1.close();

    canvas.drawPath(path_1, paintFill1);

    // Circle

    Paint paintStroke1 = Paint()
      ..color = const Color.fromARGB(255, 255, 255, 255)
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.01
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    canvas.drawPath(path_1, paintStroke1);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
