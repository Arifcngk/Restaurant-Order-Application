import 'package:flutter/material.dart';
import 'package:looking_for_a_custom_app/const/color.dart';

class txtFormFieldWidget extends StatelessWidget {
  const txtFormFieldWidget({
    super.key,
    required ColorApp colorApp,
    required this.icon,
    required this.text,
    this.isNotPassword = false,
  }) : _colorApp = colorApp;

  final ColorApp _colorApp;
  final IconData icon;
  final String text;
  final bool isNotPassword;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        fillColor: _colorApp.scaffoldBackgroungColor,
        filled: true,
        prefixIcon: Icon(icon),
        focusColor: _colorApp.btnColor,
        suffixIcon: Padding(
          padding: EdgeInsets.only(top: 12, right: 5),
          child: Visibility(
            visible: isNotPassword,
            child: Text(
              'Show',
              style: Theme.of(context).textTheme.labelMedium!.copyWith(
                    fontSize: 14,
                    color: Colors.black,
                    decoration:
                        TextDecoration.underline, // Yazının altını çizer
                    decorationColor:
                        Colors.black, // Çizginin rengini siyah yapar
                    decorationThickness: 2, // Çizginin kalınlığını ayarlar
                  ),
            ),
          ),
        ),
        hintText: text,
        hintStyle: TextStyle(color: Colors.black.withOpacity(0.5)),
        prefixIconColor: Colors.black.withOpacity(0.5),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
