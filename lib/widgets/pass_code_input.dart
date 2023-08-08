import 'package:flutter/material.dart';
import 'package:rotary_passs/widgets/utils/constants.dart';

import 'dial_number.dart';

class PassCodeInput extends StatelessWidget {
  const PassCodeInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        for (var i = 0; i < 3; i++)
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              for (var j = 0; j < 3; j++)
                DialNumber(number: Constants.inputValues[i * 3 + j]),
            ],
          ),
        DialNumber(
          number: Constants.inputValues.last,
        )
      ],
    );
  }
}
