import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../state/calculation_state.dart';
import '/widget/calculator_btn.dart';


class Calculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Calculator"),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    padding: EdgeInsets.only(right: 12.0),
                    alignment: Alignment.bottomRight,
                    child: Consumer<CalculationState>(
                      builder: (context, state, child) {
                        return Text(
                          state.history,
                          style: GoogleFonts.rubik(
                            textStyle: TextStyle(
                              fontSize: 25,
                              color: Colors.grey,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(12.0),
                    child: Consumer<CalculationState>(
                      builder: (context, state, child) {
                        return Text(
                          state.expression,
                          style: GoogleFonts.rubik(
                            textStyle: TextStyle(
                              fontSize: 50,
                              color: Colors.white,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton(
                  buttonText: 'AC',
                  buttonColor: Colors.grey,
                  textColor: Colors.black,
                  paddingValue: 25.0,
                ),
                CalculatorButton(
                  buttonText: 'C',
                  buttonColor: Colors.grey,
                  textColor: Colors.black,
                  paddingValue: 25.0,
                ),
                CalculatorButton(
                  buttonText: '%',
                  buttonColor: Colors.amber,
                  textColor: Colors.white,
                  paddingValue: 25.0,
                ),
                CalculatorButton(
                  buttonText: '/',
                  buttonColor: Colors.amber,
                  textColor: Colors.white,
                  paddingValue: 25.0,
                ),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton(
                  buttonText: '7',
                  buttonColor: Colors.grey,
                  textColor: Colors.white,
                  paddingValue: 25.0,
                ),
                CalculatorButton(
                  buttonText: '8',
                  buttonColor: Colors.grey,
                  textColor: Colors.white,
                  paddingValue: 25.0,
                ),
                CalculatorButton(
                  buttonText: '9',
                  buttonColor: Colors.grey,
                  textColor: Colors.white,
                  paddingValue: 25.0,
                ),
                CalculatorButton(
                  buttonText: 'x',
                  buttonColor: Colors.amber,
                  textColor: Colors.white,
                  paddingValue: 25.0,
                ),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton(
                  buttonText: '4',
                  buttonColor: Colors.grey,
                  textColor: Colors.white,
                  paddingValue: 25.0,
                ),
                CalculatorButton(
                  buttonText: '5',
                  buttonColor: Colors.grey,
                  textColor: Colors.white,
                  paddingValue: 25.0,
                ),
                CalculatorButton(
                  buttonText: '6',
                  buttonColor: Colors.grey,
                  textColor: Colors.white,
                  paddingValue: 25.0,
                ),
                CalculatorButton(
                  buttonText: '-',
                  buttonColor: Colors.amber,
                  textColor: Colors.white,
                  paddingValue: 25.0,
                ),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton(
                  buttonText: '1',
                  buttonColor: Colors.grey,
                  textColor: Colors.white,
                  paddingValue: 25.0,
                ),
                CalculatorButton(
                  buttonText: '2',
                  buttonColor: Colors.grey,
                  textColor: Colors.white,
                  paddingValue: 25.0,
                ),
                CalculatorButton(
                  buttonText: '3',
                  buttonColor: Colors.grey,
                  textColor: Colors.white,
                  paddingValue: 25.0,
                ),
                CalculatorButton(
                  buttonText: '+',
                  buttonColor: Colors.amber,
                  textColor: Colors.white,
                  paddingValue: 25.0,
                ),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorButton(
                  buttonText: ' . ',
                  buttonColor: Colors.grey,
                  textColor: Colors.white,
                  paddingValue: 25.0,
                ),
                CalculatorButton(
                  buttonText: '0',
                  buttonColor: Colors.grey,
                  textColor: Colors.white,
                  paddingValue: 25.0,
                ),
                CalculatorButton(
                  buttonText: "+/-",
                  buttonColor: Colors.grey,
                  textColor: Colors.white,
                  paddingValue: 25.0,
                ),
                CalculatorButton(
                  buttonText: '=',
                  buttonColor: Colors.amber,
                  textColor: Colors.white,
                  paddingValue: 25.0,
                ),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
          ],
        ),
      ),
    );
  }
}