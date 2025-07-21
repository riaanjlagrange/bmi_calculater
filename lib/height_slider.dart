import 'package:flutter/material.dart';
import 'constants.dart';

class HeightSlider extends StatefulWidget {
  final int height;

  const HeightSlider({super.key, required this.height});

  @override
  State<HeightSlider> createState() => _HeightSliderState();
}

class _HeightSliderState extends State<HeightSlider> {
  late int height;

  @override
  void initState() {
    super.initState();
    height = widget.height;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
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
            thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
            overlayShape: RoundSliderOverlayShape(overlayRadius: 30),
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
    );
  }
}
