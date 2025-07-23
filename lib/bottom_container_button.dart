import 'package:flutter/material.dart';
import 'constants.dart';

class BottomContainerButton extends StatelessWidget {
  final String buttonText;
  final Function onPress;

  const BottomContainerButton({
    super.key,
    required this.buttonText,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onPress();
      },
      child: Container(
        decoration: BoxDecoration(
          color: kBottomContainerColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: kBottomContainerHeight,
        child: Center(
          child: Text(buttonText.toUpperCase(), style: kLargeButtonLabel),
        ),
      ),
    );
  }
}
