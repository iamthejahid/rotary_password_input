import 'package:flutter/material.dart';
import 'package:rotary_passs/widgets/utils/extensions/size_extension.dart';

import '../utils/constants.dart';

import 'dart:math' as math;

class RotaryDialBackgroundPaiter extends CustomPainter {
  const RotaryDialBackgroundPaiter();

  @override
  void paint(Canvas canvas, Size size) {
    const ringWidth = Constants.rotatyRingWidth;
    final paint = Paint()
      ..color = const Color.fromRGBO(0, 0, 0, 1.0)
      ..strokeWidth = ringWidth
      ..style = PaintingStyle.stroke;

    canvas.drawArc(
        Rect.fromCircle(
          center: size.centerOffSet,
          radius: size.width / 2 - ringWidth / 2,
        ),
        0,
        math.pi * 2.0,
        false,
        paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
