import 'package:flutter/material.dart';

import '../constants.dart';

class CustomShapeWithBackButtonAndTitleScreen extends StatelessWidget {
  const CustomShapeWithBackButtonAndTitleScreen({
    required this.titleScreen,
    Key? key,
  }) : super(key: key);

  final String? titleScreen;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 300,
      decoration: const BoxDecoration(
        color: kButtonColor,
        shape: BoxShape.circle,
      ),
      alignment: Alignment.bottomCenter,
      child: SizedBox(
        width: 100,
        height: 150,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Back button
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                Icon(Icons.arrow_back, color: Colors.white),
                SizedBox(width: 10),
                Text(
                  'Back',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    letterSpacing: 0.5,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),

            // Screen Title
            Text(
              titleScreen!,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 21,
                letterSpacing: 0.5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}