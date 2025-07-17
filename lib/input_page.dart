import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class ShadedContainer extends StatelessWidget {
  final Color color;

  const ShadedContainer({required this.color, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}

class _InputPageState extends State<InputPage> {
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
                    Expanded(child: ShadedContainer(color: Color(0xFF1D1E33))),
                    Expanded(child: ShadedContainer(color: Color(0xFF1D1E33))),
                  ],
                ),
              ),
              Expanded(child: ShadedContainer(color: Color(0xFF1D1E33))),
              Expanded(
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Expanded(child: ShadedContainer(color: Color(0xFF1D1E33))),
                    Expanded(child: ShadedContainer(color: Color(0xFF1D1E33))),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
