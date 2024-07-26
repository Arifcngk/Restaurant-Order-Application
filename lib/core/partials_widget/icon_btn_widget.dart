import 'package:flutter/material.dart';
import 'package:looking_for_a_custom_app/const/color.dart';

class IconBtnWidget extends StatelessWidget {
  const IconBtnWidget({
    super.key,
    required ColorApp colorApp,
  }) : _colorApp = colorApp;

  final ColorApp _colorApp;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 40,
      left: 16,
      child: CircleAvatar(
        radius: 20,
        backgroundColor: _colorApp.colorEclipse,
        child: const Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
      ),
    );
  }
}
