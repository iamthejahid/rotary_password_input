import 'package:flutter/material.dart';
import 'package:rotary_passs/widgets/utils/constants.dart';
import 'package:rotary_passs/widgets/utils/extensions/size_extension.dart';
import 'dart:math' as math;

class RotaryDialForeGroundPainter extends CustomPainter {
  const RotaryDialForeGroundPainter({required this.numberRadiusFromCenter});

  final double numberRadiusFromCenter;

  @override
  void paint(Canvas canvas, Size size) {
    final ringWidth = Constants.rotatyRingWidth;

    final paint = Paint()
      ..color = const Color.fromARGB(255, 255, 255, 255)
      ..strokeCap = StrokeCap.round
      ..strokeWidth = ringWidth - Constants.rotatyRingPadding * 2
      ..style = PaintingStyle.stroke;

    canvas
      ..saveLayer(Rect.largest, paint)
      ..drawArc(
        Rect.fromCircle(
            center: size.centerOffSet, radius: size.width / 2 - ringWidth / 2),
        Constants.firstDialNumberPostion,
        Constants.maxRotaryRingSweepAngle,
        false,
        paint,
      );

    for (int i = 0; i < 10; i++) {
      final offset = Offset.fromDirection(
        math.pi * (-30 - i * 30) / 180,
        numberRadiusFromCenter,
      );
      canvas.drawCircle(
        size.centerOffSet + offset,
        Constants.dialNumberRadius,
        Paint()..blendMode = BlendMode.clear,
      );
    }

    canvas.drawCircle(
        size.centerOffSet +
            Offset.fromDirection(math.pi / 6, numberRadiusFromCenter),
        ringWidth / 6,
        Paint()..color = Colors.white);

    canvas.restore();
  }

  @override
  bool shouldRepaint(RotaryDialForeGroundPainter oldDelegate) {
    return oldDelegate.numberRadiusFromCenter != numberRadiusFromCenter;
  }
}
