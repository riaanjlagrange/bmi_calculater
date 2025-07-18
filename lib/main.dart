import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'input_page.dart';

const Color appBarColor = Color(0xFFEB1555);

void main() {
  runApp(BMICalculator());
}

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.indigo,
          brightness: Brightness.dark,
        ),
        appBarTheme: AppBarTheme(backgroundColor: appBarColor),
      ),
      home: InputPage(),
    );
  }
}
