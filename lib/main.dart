import 'package:flutter/material.dart';
import 'Coulmn expanded.dart';
import 'ResultScreen.dart';
import 'bmi_calculator.dart';
import 'login_screen.dart';
import 'messanger_Screen.dart';
import 'minusandplus.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BmiScreen(),
    );
  }
}
