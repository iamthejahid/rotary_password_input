import 'package:flutter/material.dart';
import 'package:rotary_passs/widgets/dial_number.dart';

import 'utils/constants.dart';
import 'molucule/bg_painter.dart';
import 'dart:math' as math;

import 'molucule/fg_painter.dart';

class RotaryDialInput extends StatelessWidget {
  const RotaryDialInput({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final width = constraints.maxWidth;
        final size = Size(width, width);
        final dialNumberDistantsFromCenter = width / 2 -
            16.0 -
            Constants.rotatyRingPadding * 2 -
            Constants.dialNumberPadding * 2;
        return Stack(
          alignment: Alignment.center,
          children: [
            CustomPaint(
              size: size,
              painter: RotaryDialBackgroundPaiter(),
            ),
            for (var i = 0; i < Constants.inputValues.length; i++)
              Transform.translate(
                offset: Offset.fromDirection(
                  (i + 1) * -math.pi / 6,
                  dialNumberDistantsFromCenter,
                ),
                child: DialNumber(number: Constants.inputValues[i]),
              ),
            CustomPaint(
              size: size,
              painter: RotaryDialForeGroundPainter(
                numberRadiusFromCenter: dialNumberDistantsFromCenter,
              ),
            )
          ],
        );
      },
    );
  }
}
