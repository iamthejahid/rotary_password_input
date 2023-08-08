// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:rotary_passs/widgets/utils/extensions/list_extensions.dart';

final _passCodeDigitPadding = 8.0;
final _passCodeDigitGapBig = 8.0 * 2.0;
final _passCodeDigitSizeSmall = 8.0 * 3.0;
final _passCodeDigitSizeBig = 36.0;

class PasscodeDigits extends StatelessWidget {
  final List passCodeDigitValue;
  final bool simpleInputMode;
  const PasscodeDigits({
    super.key,
    required this.passCodeDigitValue,
    required this.simpleInputMode,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: _passCodeDigitSizeBig,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          for (var i = 0; i < passCodeDigitValue.length; i++)
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.black,
              ),
              height: _passCodeDigitSizeSmall,
              width: _passCodeDigitSizeBig,
            )
        ].addBetween(SizedBox(
          width:
              simpleInputMode ? _passCodeDigitGapBig : _passCodeDigitSizeSmall,
        )),
      ),
    );
  }
}

class PassCodeDigit {
  final Color backGroundColor;
  final Color fontColor;
  final int? value;
  PassCodeDigit({
    required this.backGroundColor,
    required this.fontColor,
    this.value,
  });
}
