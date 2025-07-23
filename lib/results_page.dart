import 'package:bmi_calculator/bottom_container_button.dart';
import 'package:bmi_calculator/shaded_container.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

class ResultsPage extends StatelessWidget {
  final String bmi;
  final String result;
  final String interpretation;

  const ResultsPage({
    super.key,
    required this.bmi,
    required this.result,
    required this.interpretation,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Results"), centerTitle: true),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Expanded(
              child: Center(child: Text("Your Results", style: kLargeTitle)),
            ),
            Expanded(
              flex: 3,
              child: ShadedContainer(
                color: kTileColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(result.toUpperCase(), style: kResultsTitle),
                    Text(bmi, style: kExtraLargeBold),
                    Text(
                      interpretation,
                      textAlign: TextAlign.center,
                      style: kTextDescription,
                    ),
                  ],
                ),
              ),
            ),
            BottomContainerButton(
              buttonText: "Re-calculate",
              onPress: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
