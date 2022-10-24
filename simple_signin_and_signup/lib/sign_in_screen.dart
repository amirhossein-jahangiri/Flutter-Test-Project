import 'package:flutter/material.dart';
import 'package:simple_signin_and_signup/common_widgets/custom_sign_in_button.dart';
import 'package:simple_signin_and_signup/constants.dart';

import 'common_widgets/custom_color_shape.dart';
import 'common_widgets/custom_question_mark.dart';
import 'common_widgets/custom_shape_with_back_button_and_title_screen.dart';
import 'common_widgets/custom_text_field.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          // Light Blue Shape - below shape
          const CustomColorShape(
            height: 600,
            color: kLightBlueColor,
            child: SizedBox.shrink(),
          ),

          // Normal Light Blue Shape - middle shape
          const CustomColorShape(
            height: 500,
            color: kNormalLightBlueColor,
            child: SizedBox.shrink(),
          ),

          // Deep Blue Shape - TextFields and Sign In button
          CustomColorShape(
            height: 400,
            color: kDeepBlueColor,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  const SizedBox(height: 50),
                  const CustomTextField(title: 'Email or phone number'),
                  const SizedBox(height: 30),
                  const CustomTextField(title: 'Password'),
                  const SizedBox(height: 30),
                  CustomBlueButton(press: () {}, title: 'Sign In'),
                ],
              ),
            ),
          ),

          // Question Mark - top-right of the screen
          const Positioned(
            right: 30,
            top: 50,
            child: CustomQuestionMark(),
          ),

          // Custom shape - back button with screen title
          const Positioned(
            left: -100,
            top: -150,
            child: CustomShapeWithBackButtonAndTitleScreen(
              titleScreen: 'Sign In',
            ),
          ),
        ],
      ),
    );
  }
}
