import 'package:flutter/material.dart';

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
