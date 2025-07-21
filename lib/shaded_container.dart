import 'package:flutter/material.dart';

class ShadedContainer extends StatelessWidget {
  final Color color;
  final Widget? cardChild;
  final Function? onPress;

  const ShadedContainer({
    required this.color,
    this.cardChild,
    this.onPress,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (onPress != null) {
          onPress!();
        }
      },
      child: Container(
        margin: EdgeInsets.all(15),
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
        child: cardChild,
      ),
    );
  }
}
