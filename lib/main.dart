import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rotary_passs/widgets/molucule/input_method.dart';
import 'package:rotary_passs/widgets/molucule/pass_code_digits.dart';
import 'package:rotary_passs/widgets/pass_code_input.dart';
import 'package:rotary_passs/widgets/rotary_input.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        textTheme: GoogleFonts.kanitTextTheme(),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _simpleInputMode = false;

  late final List<PassCodeDigit> _passCodeDigitValues;

  void _onModeChange() => setState(() => _simpleInputMode = !_simpleInputMode);

  @override
  void initState() {
    _passCodeDigitValues = List.generate(
      3,
      (index) => PassCodeDigit(
        backGroundColor: Colors.white,
        fontColor: Colors.white,
      ),
      growable: false,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16 * 2, horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Enter\nPasscode'.toUpperCase(),
              style: Theme.of(context).textTheme.displaySmall?.copyWith(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const Gap(32),
            Center(
              child: PasscodeDigits(
                passCodeDigitValue: _passCodeDigitValues,
                simpleInputMode: _simpleInputMode,
              ),
            ),
            const Gap(32),
            Expanded(
                child: _simpleInputMode ? PassCodeInput() : RotaryDialInput()),
            Align(
              alignment: Alignment.centerRight,
              child: InputModeButton(
                simpleInputMode: !_simpleInputMode,
                onTap: _onModeChange,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
