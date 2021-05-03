import 'package:flutter/material.dart';
import 'package:flybuy/components/default_button.dart';
import 'package:flybuy/constants.dart';
import 'package:flybuy/screens/home/home_screen.dart';
import 'package:flybuy/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: SizeConfig.screenHeight * 0.04),
        Image.asset(
          'assets/images/success.png',
          height: SizeConfig.screenHeight * 0.4,
        ),
        SizedBox(height: SizeConfig.screenHeight * 0.08),
        Text(
          "Login Success",
          style: headingStyle,
        ),
        Spacer(),
        SizedBox(
          width: SizeConfig.screenWidth * .6,
          child: DefaultButton(
            text: "Back to home",
            press: () => Navigator.pushNamed(context, HomeScreen.routeName),
          ),
        ),
        Spacer(),
      ],
    );
  }
}
