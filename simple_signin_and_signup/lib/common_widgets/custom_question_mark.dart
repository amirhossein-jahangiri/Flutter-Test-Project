import 'package:flutter/material.dart';

import '../constants.dart';

class CustomQuestionMark extends StatelessWidget {
  const CustomQuestionMark({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        color: kLightBlueColor,
        borderRadius: BorderRadius.circular(5),
      ),
      child: const Icon(Icons.help_outline, color: Colors.black),
    );
  }
}