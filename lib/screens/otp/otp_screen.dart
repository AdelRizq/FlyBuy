import 'package:flutter/material.dart';

import './components/body.dart';

class OTPScreen extends StatelessWidget {
  OTPScreen();
  static const routeName = '/otp';

  @override
  Widget build(BuildContext context) {
    final phone = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text("OTP Verification"),
      ),
      body: Body(phone),
    );
  }
}
