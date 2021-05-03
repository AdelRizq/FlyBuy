import 'package:flutter/material.dart';
import 'package:flybuy/screens/sign_up/sign_up_screen.dart';

import '../constants.dart';

class NoAccountText extends StatelessWidget {
  const NoAccountText({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Don't have an account? "),
        TextButton(
          child: Text(
            "Sign Up",
            style: TextStyle(color: kPrimaryColor),
          ),
          onPressed: () => Navigator.pushNamed(
            context,
            SignUpScreen.routeName,
          ),
        ),
      ],
    );
  }
}
