import 'package:flutter/material.dart';

// Shaded container widget

class ShadedContainer extends StatelessWidget {
  final Color color;
  final Widget? cardChild;

  const ShadedContainer({required this.color, this.cardChild, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: cardChild,
    );
  }
}
