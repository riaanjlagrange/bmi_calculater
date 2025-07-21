import 'package:flutter/material.dart';
import 'shaded_container.dart';
import 'gender_picker.dart';
import 'constants.dart';
import 'height_slider.dart';

enum Gender { male, female }

int height = 150;

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender = Gender.male;

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
                  cardChild: HeightSlider(height: height),
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Expanded(child: ShadedContainer(color: kTileColor)),
                    Expanded(child: ShadedContainer(color: kTileColor)),
                  ],
                ),
              ),
              Container(
                color: kBottomContainerColor,
                margin: EdgeInsets.only(top: 10.0),
                width: double.infinity,
                height: kBottomContainerHeight,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
