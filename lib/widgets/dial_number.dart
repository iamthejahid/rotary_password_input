import 'package:flutter/material.dart';
import 'package:rotary_passs/widgets/utils/constants.dart';

class DialNumber extends StatelessWidget {
  final int number;
  const DialNumber({super.key, required this.number});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Constants.dialNumberRadius * 2,
      width: Constants.dialNumberRadius * 2,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.black,
        shape: BoxShape.circle,
      ),
      child: Text(
        '$number',
        style: Theme.of(context)
            .textTheme
            .headlineMedium
            ?.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
      ),
    );
  }
}
