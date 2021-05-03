import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';
import '../../../components/form_error.dart';
import '../../../components/default_button.dart';
import '../../../components/no_account_text.dart';
import '../../../components/custom_suffix_icon.dart';

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

class ForgotPasswordForm extends StatefulWidget {
  @override
  _ForgotPasswordFormState createState() => _ForgotPasswordFormState();
}

class _ForgotPasswordFormState extends State<ForgotPasswordForm> {
  final _formKey = GlobalKey<FormState>();
  List<String> errors = [];
  String email;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Form(
          key: _formKey,
          child: TextFormField(
            onSaved: (newEmail) => this.email = newEmail,
            onChanged: (email) {
              _formKey.currentState.validate();
            },
            validator: (email) {
              if (email.isEmpty) {
                return kEmailNullError;
              } else if (email.isNotEmpty &&
                  !emailValidatorRegExp.hasMatch(email)) {
                return kInvalidEmailError;
              }

              return null;
            },
            decoration: InputDecoration(
              labelText: "Email",
              hintText: "Enter your email",
              suffixIcon: CustomSuffixIcon(iconPath: "assets/icons/Mail.svg"),
            ),
            keyboardType: TextInputType.emailAddress,
          ),
        ),
        SizedBox(height: getProportionateScreenHeight(30)),
        FormError(errors: errors),
        SizedBox(height: SizeConfig.screenHeight * 0.1),
        DefaultButton(
          text: 'Continue',
          press: () {
            if (_formKey.currentState.validate()) {
              // send an email
            }
          },
        ),
        SizedBox(height: SizeConfig.screenHeight * 0.1),
        NoAccountText(),
      ],
    );
  }
}
