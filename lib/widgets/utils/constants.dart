import 'dart:math' as math;

abstract class Constants {
  static const inputValues = [1, 2, 3, 4, 5, 6, 7, 8, 9, 0];

  static const rotatyRingPadding = 4.0;

  static const rotatyRingWidth = 80.0;

  static const dialNumberPadding = 8.0;

  static const dialNumberRadius =
      rotatyRingWidth / 2 - (rotatyRingPadding + dialNumberPadding);

  static const firstDialNumberPostion = math.pi / 3;

  static const maxRotaryRingAngle = math.pi * 7 / 4;

  static const maxRotaryRingSweepAngle = math.pi / 2 * 3;
}
