import 'package:flutter/material.dart';
import 'package:fluttertest/baseTheme.dart';
import 'package:fluttertest/grid.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Test',
      theme: baseTheme, // baseTheme.dart
      home: Grid(), // grid.dart
    );
  }
}
