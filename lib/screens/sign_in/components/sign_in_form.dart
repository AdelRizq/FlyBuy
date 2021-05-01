import 'package:flutter/material.dart';

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
              Text(
                "Forget password",
                style: TextStyle(decoration: TextDecoration.underline),
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
        if (password.isNotEmpty && errors.contains(kPassNullError)) {
          setState(() {
            errors.remove(kPassNullError);
          });
        } else if (password.isNotEmpty &&
            password.length >= 8 &&
            errors.contains(kShortPassError)) {
          setState(() => errors.remove(kShortPassError));
        }

        return null;
      },
      validator: (password) {
        if (password.isEmpty && !errors.contains(kPassNullError)) {
          errors.add(kPassNullError);
        } else if (password.isNotEmpty &&
            password.length <= 7 &&
            !errors.contains(kShortPassError)) {
          errors.add(kShortPassError);
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
        if (email.isNotEmpty && errors.contains(kEmailNullError)) {
          setState(() {
            errors.remove(kEmailNullError);
          });
        } else if (email.isNotEmpty &&
            emailValidatorRegExp.hasMatch(email) &&
            errors.contains(kInvalidEmailError)) {
          setState(() => errors.remove(kInvalidEmailError));
        }

        return null;
      },
      validator: (email) {
        if (email.isEmpty && !errors.contains(kEmailNullError)) {
          setState(() {
            errors.add(kEmailNullError);
          });
        } else if (email.isNotEmpty &&
            !emailValidatorRegExp.hasMatch(email) &&
            !errors.contains(kInvalidEmailError)) {
          setState(() => errors.add(kInvalidEmailError));
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
