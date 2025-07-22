import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Results Page")),
      body: SafeArea(
        child: Center(
          child: Text(
            "Get your results here",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
