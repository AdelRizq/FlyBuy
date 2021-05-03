import 'package:flutter/material.dart';

import './screens/sign_in/sign_in_screen.dart';
import './screens/splash_screen/splash_screen.dart';
import './screens/forgot_password/forgot_password_screen.dart';

Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (ctx) => SplashScreen(),
  SignInScreen.routeName: (ctx) => SignInScreen(),
  ForgotPasswordScreen.routeName: (ctx) => ForgotPasswordScreen(),
};
