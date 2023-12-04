import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gradproject2/Utils/Static/SizeConfig.dart';
import 'package:gradproject2/Utils/Static/route.dart';
import 'package:gradproject2/Utils/Widget/BackGround.dart';
import '../../../Utils/Widget/CustomButton.dart';
import '../../../Utils/Widget/LogoText.dart';
import 'components/Remember&Forget.dart';
import 'components/SignUpButton.dart';
import 'components/TextFields.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          const BG(),
          Padding(
            padding:
                EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
            child: Column(
              children: [
                SizedBox(height: getProportionateScreenHeight(100)),
                const LogoText(),
                SizedBox(height: getProportionateScreenHeight(75)),
                const TextFields(),
                SizedBox(height: getProportionateScreenHeight(15)),
                const RememberForget(),
                SizedBox(height: getProportionateScreenHeight(50)),
                CustomButton(text: 'LogIn', onTap: () {Get.offAllNamed(AppRoute.home);},),
                SizedBox(height: getProportionateScreenHeight(25)),
                const SignUpButton(),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
