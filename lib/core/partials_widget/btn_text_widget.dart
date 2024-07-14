import 'package:flutter/material.dart';
import 'package:looking_for_a_custom_app/const/color.dart';

class btnTextWidget extends StatelessWidget {
  const btnTextWidget({
    super.key,
    required ColorApp colorApp,
  }) : _colorApp = colorApp;

  final ColorApp _colorApp;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: SizedBox(
        width: double.infinity,
        height: 60,
        child: Card(
          color: _colorApp.btnColor,
          child: Center(
              child: Text(
            'Login',
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
