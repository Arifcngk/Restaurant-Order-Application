import 'package:flutter/material.dart';

class txtFormFieldWidget extends StatelessWidget {
  const txtFormFieldWidget({
    super.key,
    required this.icon,
    required this.text,
    this.isNotPassword = false,
    required this.colorApp,
  });

  final Color colorApp;
  final IconData icon;
  final String text;
  final bool isNotPassword;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        fillColor: colorApp,
        filled: true,
        prefixIcon: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(icon),
              const SizedBox(
                  width: 8), // Add some space between the icon and the divider
              Container(
                width: 1, // Width of the divider
                height: 24, // Height of the divider
                color: Colors.black.withOpacity(0.5), // Color of the divider
              ),
            ],
          ),
        ),
        focusColor: colorApp,
        suffixIcon: Padding(
          padding: EdgeInsets.only(top: 12, right: 5),
          child: Visibility(
            visible: isNotPassword,
            child: Text(
              'Show',
              style: Theme.of(context).textTheme.labelMedium!.copyWith(
                    fontSize: 14,
                    color: Colors.black,
                    decoration: TextDecoration.underline,
                    decorationColor: Colors.black,
                    decorationThickness: 2,
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
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.circular(10),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.orange),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      style: TextStyle(color: Colors.orange),
      cursorColor: Colors.orange,
    );
  }
}
