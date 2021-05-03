import 'package:flutter/material.dart';

import './screens/otp/otp_screen.dart';
import './screens/sign_in/sign_in_screen.dart';
import './screens/sign_up/sign_up_screen.dart';
import './screens/splash_screen/splash_screen.dart';
import './screens/login_success/login_success_screen.dart';
import './screens/forgot_password/forgot_password_screen.dart';
import './screens/complete_profile/complete_profile_screen.dart';

Map<String, WidgetBuilder> routes = {
  OTPScreen.routeName: (ctx) => OTPScreen(),
  SplashScreen.routeName: (ctx) => SplashScreen(),
  SignInScreen.routeName: (ctx) => SignInScreen(),
  SignUpScreen.routeName: (ctx) => SignUpScreen(),
  LoginSuccessScreen.routeName: (ctx) => LoginSuccessScreen(),
  ForgotPasswordScreen.routeName: (ctx) => ForgotPasswordScreen(),
  CompleteProfileScreen.routeName: (ctx) => CompleteProfileScreen(),
};
