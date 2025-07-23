import 'package:flutter/material.dart';
import 'package:firstapp/screen/landing.dart';

//material.io/components
//material.io/color
//appicon.co

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: FirstScreen());
  }
}
