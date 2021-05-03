import 'package:flutter/material.dart';
import 'package:flybuy/screens/forgot_password/forgot_password_screen.dart';
import 'package:flybuy/screens/login_success/login_success_screen.dart';

import '../../../constants.dart';
import '../../../size_config.dart';
import '../../../components/form_error.dart';
import '../../../components/default_button.dart';
import '../../../components/custom_suffix_icon.dart';

class SignForm extends StatefulWidget {
  @override
  _SignFormState createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  final _formKey = GlobalKey<FormState>();
  String email, password;
  final List<String> errors = [];
  bool remember = false;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildEmailFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildPasswordFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          Row(
            children: [
              Checkbox(
                value: remember,
                activeColor: kPrimaryColor,
                onChanged: (value) => setState(() => remember = value),
              ),
              Text("Remember me"),
              Spacer(),
              TextButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ForgotPasswordScreen(),
                  ),
                ),
                child: Text(
                  "Forgot password",
                ),
              ),
            ],
          ),
          SizedBox(height: getProportionateScreenHeight(30)),
          FormError(errors: errors),
          SizedBox(height: getProportionateScreenHeight(30)),
          DefaultButton(
            text: "Continue",
            press: () {
              if (_formKey.currentState.validate()) {
                _formKey.currentState.save();
                Navigator.pushNamed(context, LoginSuccessScreen.routeName);
              }
            },
          ),
        ],
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      onSaved: (newPassword) => this.password = newPassword,
      onChanged: (password) {
        _formKey.currentState.validate();
      },
      validator: (password) {
        if (password.isEmpty) {
          return kPassNullError;
        } else if (password.isNotEmpty && password.length <= 7) {
          return kShortPassError;
        }

        return null;
      },
      decoration: InputDecoration(
        labelText: "Password",
        hintText: "Enter your password",
        suffixIcon: CustomSuffixIcon(iconPath: "assets/icons/Lock.svg"),
      ),
      obscureText: true,
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      onSaved: (newEmail) => this.email = newEmail,
      onChanged: (email) {
        _formKey.currentState.validate();
      },
      validator: (email) {
        if (email.isEmpty) {
          return kEmailNullError;
        } else if (email.isNotEmpty && !emailValidatorRegExp.hasMatch(email)) {
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
    );
  }
}
