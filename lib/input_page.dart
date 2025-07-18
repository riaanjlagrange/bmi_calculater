import 'package:flutter/material.dart';
import 'shaded_container.dart';
import 'gender_picker.dart';

// Color constants

const Color tileColor = Color(0xFF1D1E33);
const Color bottomContainerColor = Color(0xFFEB1555);

const double bottomContainerHeight = 80.0;

// active / inactive card colors

const activeCardColor = Color(0xFF111328);
const inactiveCardColor = Color(0xFF1D1E33);

enum Gender { male, female }
// Input page

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
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedGender = Gender.male;
                          });
                        },
                        child: ShadedContainer(
                          color: selectedGender == Gender.male
                              ? activeCardColor
                              : inactiveCardColor,
                          cardChild: GenderPicker(gender: "male"),
                        ),
                      ),
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedGender = Gender.female;
                          });
                        },
                        child: ShadedContainer(
                          color: selectedGender == Gender.female
                              ? activeCardColor
                              : inactiveCardColor,
                          cardChild: GenderPicker(gender: "female"),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(child: ShadedContainer(color: tileColor)),
              Expanded(
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Expanded(child: ShadedContainer(color: tileColor)),
                    Expanded(child: ShadedContainer(color: tileColor)),
                  ],
                ),
              ),
              Container(
                color: bottomContainerColor,
                margin: EdgeInsets.only(top: 10.0),
                width: double.infinity,
                height: bottomContainerHeight,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
