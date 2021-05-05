import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';
import './forgot_password_form.dart';


class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(20)),
            child: Column(
              children: [
                SizedBox(height: SizeConfig.screenHeight * 0.04),
                Text(
                  "Forgot Password",
                  style: headingStyle,
                  textAlign: TextAlign.center,
                ),
                Text(
                  "Please enter your email and we will send/nyou a link to return to your account",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                ForgotPasswordForm(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
