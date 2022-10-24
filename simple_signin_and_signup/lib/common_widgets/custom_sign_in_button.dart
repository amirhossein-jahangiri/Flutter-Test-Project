import 'package:flutter/material.dart';

import '../constants.dart';

class CustomBlueButton extends StatelessWidget {
  const CustomBlueButton({
    required this.press,
    required this.title,
    Key? key,
  }) : super(key: key);

  final Function()? press;
  final String? title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120,
      height: 40,
      child: ElevatedButton(
        onPressed: press,
        style: ButtonStyle(
          backgroundColor: MaterialStateColor.resolveWith(
            (states) => kButtonColor,
          ),
          shape: MaterialStateProperty.resolveWith(
            (states) => RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
          ),
        ),
        child: Text(
          title!,
          style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              letterSpacing: 0.5,
              fontSize: 16),
        ),
      ),
    );
  }
}
