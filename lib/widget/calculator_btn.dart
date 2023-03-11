import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:google_fonts/google_fonts.dart';

import '../state/calculation_state.dart';

class CalculatorButton extends StatelessWidget {
  final String buttonText;
  final Color buttonColor;
  final Color textColor;
  final double paddingValue;

  CalculatorButton(
      {required this.buttonText,
      required this.buttonColor,
      required this.textColor,
      required this.paddingValue,});

  @override
  Widget build(BuildContext context) {
    return Container(child: Consumer<CalculationState>(
      builder: (context, value, child) {
        return ElevatedButton(
          onPressed: () {
            value.numClick(buttonText);
          },
          child: Text(
            buttonText,
            style: GoogleFonts.rubik(
              textStyle: TextStyle(
                color: textColor,
                fontSize: 30,
              ),
            ),
          ),
          style: ElevatedButton.styleFrom(
            primary: buttonColor,
            shape: CircleBorder(),
            padding: EdgeInsets.all(paddingValue),
          ),
        );
      },
    ));
  }
}