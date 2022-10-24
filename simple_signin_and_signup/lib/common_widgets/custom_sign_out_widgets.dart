import 'package:flutter/material.dart';

import '../constants.dart';

class CustomOutlineBorderButton extends StatelessWidget {
  const CustomOutlineBorderButton({required this.press, Key? key}) : super(key: key);

  final Function()? press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120,
      height: 40,
      child: OutlinedButton(
        onPressed: press,
        style: ButtonStyle(
          side: MaterialStateProperty.resolveWith(
                (states) => const BorderSide(
              color: kButtonColor,
              width: 3,
            ),
          ),
          shape: MaterialStateProperty.resolveWith(
                (states) => RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
          ),
        ),
        child: const Text(
          'Sign Up',
          style: TextStyle(
              color: kButtonColor,
              fontWeight: FontWeight.bold,
              letterSpacing: 0.5,
              fontSize: 16),
        ),
      ),
    );
  }
}