import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/bmi_calculator.dart';
import 'package:bmi_calculator/bottom_container_button.dart';
import 'package:flutter/material.dart';
import 'shaded_container.dart';
import 'gender_picker.dart';
import 'constants.dart';
import 'results_page.dart';
import 'round_icon_button.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender = Gender.male;

  int height = 150;

  int weight = 70;

  int age = 18;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("BMI Calculator"), centerTitle: true),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(5),
          child: Column(
            children: <Widget>[
              Expanded(
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Expanded(
                      child: ShadedContainer(
                        onPress: () {
                          setState(() {
                            selectedGender = Gender.male;
                          });
                        },
                        color: selectedGender == Gender.male
                            ? kActiveCardColor
                            : kInactiveCardColor,
                        cardChild: GenderPicker(gender: "male"),
                      ),
                    ),
                    Expanded(
                      child: ShadedContainer(
                        onPress: () {
                          setState(() {
                            selectedGender = Gender.female;
                          });
                        },
                        color: selectedGender == Gender.female
                            ? kActiveCardColor
                            : kInactiveCardColor,
                        cardChild: GenderPicker(gender: "female"),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ShadedContainer(
                  color: kTileColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("HEIGHT", style: kLabelTextStyle),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: <Widget>[
                          Text(height.toString(), style: kLargeLabel),
                          Text("cm", style: kLabelTextStyle),
                        ],
                      ),
                      SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                          inactiveTrackColor: Color(0xFF8D8E98),
                          activeTrackColor: Colors.white,
                          thumbColor: Color(0xFFEB1555),
                          overlayColor: Color(0x29EB1555),
                          thumbShape: RoundSliderThumbShape(
                            enabledThumbRadius: 15.0,
                          ),
                          overlayShape: RoundSliderOverlayShape(
                            overlayRadius: 30,
                          ),
                        ),
                        child: Slider(
                          value: height.toDouble(),
                          min: 120.0,
                          max: 220.0,
                          onChanged: (double newHeight) {
                            setState(() {
                              height = newHeight.round();
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Expanded(
                      child: ShadedContainer(
                        color: kTileColor,
                        cardChild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text("WEIGHT", style: kLabelTextStyle),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                              textBaseline: TextBaseline.alphabetic,
                              children: <Widget>[
                                Text(weight.toString(), style: kLargeLabel),
                                Text("kg", style: kLabelTextStyle),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                RoundIconButton(
                                  icon: FaIcon(FontAwesomeIcons.minus),
                                  operation: () {
                                    setState(() {
                                      weight--;
                                    });
                                  },
                                ),
                                SizedBox(width: 10),
                                RoundIconButton(
                                  icon: FaIcon(FontAwesomeIcons.plus),
                                  operation: () {
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: ShadedContainer(
                        color: kTileColor,
                        cardChild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text("AGE", style: kLabelTextStyle),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                              textBaseline: TextBaseline.alphabetic,
                              children: <Widget>[
                                Text(age.toString(), style: kLargeLabel),
                                Text("yrs", style: kLabelTextStyle),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                RoundIconButton(
                                  icon: FaIcon(FontAwesomeIcons.minus),
                                  operation: () {
                                    setState(() {
                                      age--;
                                    });
                                  },
                                ),
                                SizedBox(width: 10),
                                RoundIconButton(
                                  icon: FaIcon(FontAwesomeIcons.plus),
                                  operation: () {
                                    setState(() {
                                      age++;
                                    });
                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              BottomContainerButton(
                buttonText: "Calculate",
                onPress: () {
                  BmiCalculator calc = BmiCalculator(
                    weight: weight,
                    height: height,
                  );

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ResultsPage(
                        bmi: calc.calculateBMI(),
                        result: calc.getResults(),
                        interpretation: calc.getInterpretation(),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
