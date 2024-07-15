import 'package:flutter/material.dart';

class textWidget extends StatelessWidget {
  const textWidget({
    super.key,
    required this.text,
    this.fontSize = 20,
    required this.color,
  });
  final String text;
  final double fontSize;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.headlineLarge!.copyWith(
          fontSize: fontSize, color: color, fontWeight: FontWeight.bold),
      textAlign: TextAlign.center,
    );
  }
}
