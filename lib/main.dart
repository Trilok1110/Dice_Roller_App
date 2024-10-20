import 'package:flutter/material.dart';
import 'gradientc_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
          body: GradientContainer(
        colors: [
          Color.fromARGB(255, 46, 8, 112),
          Color.fromARGB(255, 67, 20, 148)
        ],
      )),
    ),
  );
}
