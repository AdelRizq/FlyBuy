import 'package:flutter/material.dart';

import './otp_form.dart';
import '../../../constants.dart';
import '../../../size_config.dart';
import '../../../components/default_button.dart';

class Body extends StatelessWidget {
  final String phone;
  Body(this.phone);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(25)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: SizeConfig.screenHeight * 0.05),
                Text("OTP Verification", style: headingStyle),
                Text("We sent your code to ${this.phone}",
                    textAlign: TextAlign.center),
                buildTimer(),
                SizedBox(height: SizeConfig.screenHeight * 0.1),
                OtpForm(),
                SizedBox(height: SizeConfig.screenHeight * 0.15),
                DefaultButton(
                  text: "Continue",
                  press: () {},
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.2),
                TextButton(
                  onPressed: () {
                    // resend OTP code
                  },
                  child: Text(
                    "Resend OTP Code",
                    style: TextStyle(
                      color: kPrimaryColor,
                    ),
                  ),
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.03),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row buildTimer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("This code will expired in "),
        TweenAnimationBuilder(
          tween: Tween(begin: 30.0, end: 0.00),
          duration: Duration(seconds: 30),
          builder: (context, value, child) => Text(
            "00:${value.toInt()}",
            style: TextStyle(color: kPrimaryColor),
          ),
          onEnd: () {},
        )
      ],
    );
  }
}
