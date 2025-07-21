import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// Gender picker widget

class GenderPicker extends StatelessWidget {
  const GenderPicker({required this.gender, super.key});

  final String gender;

  FaIcon getGenderIcon() {
    if (gender.toLowerCase() == "male") {
      return FaIcon(FontAwesomeIcons.mars, size: 80);
    }
    return FaIcon(FontAwesomeIcons.venus, size: 80);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        getGenderIcon(),
        SizedBox(height: 15),
        Text(gender.toUpperCase(), style: kLabelTextStyle),
      ],
    );
  }
}
