import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AddOrDecrease extends StatefulWidget {
  final String title;
  final int startingNum;
  final String unit;

  const AddOrDecrease({
    super.key,
    required this.title,
    required this.startingNum,
    required this.unit,
  });

  @override
  State<AddOrDecrease> createState() => _AddOrDecreaseState();
}

class _AddOrDecreaseState extends State<AddOrDecrease> {
  late String title;
  late int startingNum;
  late String unit;

  @override
  void initState() {
    super.initState();
    title = widget.title;
    startingNum = widget.startingNum;
    unit = widget.unit;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(title.toUpperCase(), style: kLabelTextStyle),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: <Widget>[
            Text(startingNum.toString(), style: kLargeLabel),
            Text(unit, style: kLabelTextStyle),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RoundIconButton(
              icon: FaIcon(FontAwesomeIcons.minus),
              operation: () {
                setState(() {
                  startingNum--;
                });
              },
            ),
            SizedBox(width: 10),
            RoundIconButton(
              icon: FaIcon(FontAwesomeIcons.plus),
              operation: () {
                setState(() {
                  startingNum++;
                });
              },
            ),
          ],
        ),
      ],
    );
  }
}

class RoundIconButton extends StatelessWidget {
  final Widget icon;
  final Function operation;

  const RoundIconButton({
    required this.icon,
    required this.operation,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: () {
        operation();
      },
      elevation: 6,
      constraints: BoxConstraints.tightFor(height: 56, width: 56),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
      child: icon,
    );
  }
}
