import 'package:flutter/material.dart';
import 'package:gradproject2/View/Screen/ForgetPassword/ForgetPassword.dart';
import 'package:gradproject2/View/Screen/HomeScreen/HomeScreen.dart';

import '../../View/Screen/LogInScreen/LoginScreen.dart';
import '../../View/Screen/SignUpScreen/SignUpScreen.dart';


Map<String, Widget Function(BuildContext)> route = {
  AppRoute.login: (context) => const LoginScreen(),
  AppRoute.signup: (context) => const SignUpScreen(),
  AppRoute.forget: (context) => const ForgetPassword(),
  AppRoute.home: (context) => const HomeScreen(),
};
class AppRoute {
  static const String login = "/LoginScreen";
  static const String signup="/SignUpScreen";
  static const String forget = "/ForgetPassword";
  static const String home = "/HomeScreen";
}