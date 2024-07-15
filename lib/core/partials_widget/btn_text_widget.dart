import 'package:flutter/material.dart';
import 'package:looking_for_a_custom_app/const/color.dart';

class btnTextWidget extends StatelessWidget {
  const btnTextWidget({super.key, required this.color, required this.text});
  final Color color;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: SizedBox(
        width: double.infinity,
        height: 60,
        child: Card(
          color: color,
          child: Center(
              child: Text(
            text,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
          )),
        ),
      ),
    );
  }
}
