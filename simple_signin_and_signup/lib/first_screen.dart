import 'package:flutter/material.dart';
import 'package:simple_signin_and_signup/constants.dart';
import 'package:simple_signin_and_signup/sign_in_screen.dart';
import 'package:simple_signin_and_signup/sign_out_screen.dart';

import 'common_widgets/custom_color_shape.dart';
import 'common_widgets/custom_sign_in_button.dart';
import 'common_widgets/custom_sign_out_widgets.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  void route(BuildContext context, Widget widget) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => widget),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // Data me image - top of the screen
          Positioned(
            left: 0,
            right: 0,
            top: 50,
            child: Image.asset(
              'assets/logo.png',
              height: 250,
            ),
          ),

          // Light Blue Shape - below shape
          const CustomColorShape(
            height: 500,
            color: kLightBlueColor,
            child: SizedBox.shrink(),
          ),

          // Normal Light Blue Shape - middle shape
          const CustomColorShape(
            height: 400,
            color: kNormalLightBlueColor,
            child: SizedBox.shrink(),
          ),

          // Deep Blue Shape - top shape with 2 buttons(Sign In, Sign Out)
          CustomColorShape(
            height: 300,
            color: kDeepBlueColor,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const SizedBox(height: 50),
                CustomBlueButton(
                  press: () => route(context, const SignInScreen()),
                  title: 'Sign In',
                ),
                const SizedBox(height: 20),
                CustomOutlineBorderButton(
                  press: () => route(context, const SignOutScreen()),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}