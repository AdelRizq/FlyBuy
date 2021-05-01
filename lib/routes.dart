import 'package:flutter/material.dart';

import './screens/sign_in/sign_in_screen.dart';
import './screens/splash_screen/splash_screen.dart';

Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (ctx) => SplashScreen(),
  SignInScreen.routeName: (ctx) => SignInScreen(),
};
