import 'package:flutter/material.dart';

class InputModeButton extends StatelessWidget {
  final bool simpleInputMode;
  final VoidCallback onTap;
  const InputModeButton(
      {super.key, required this.simpleInputMode, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        simpleInputMode ? "Original" : "Simplify",
        style: Theme.of(context).textTheme.headlineSmall?.copyWith(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
      ),
    );
  }
}
