import 'package:flutter/material.dart';
import 'package:gradproject2/Utils/Widget/BackGround.dart';
import 'package:gradproject2/Utils/Widget/CustomButton.dart';
import 'package:gradproject2/Utils/Widget/LogoText.dart';
import '../../../Utils/Static/SizeConfig.dart';
import 'components/SignUpFields.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const BG(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
            child: Column(
              children: [
                SizedBox(height: getProportionateScreenHeight(100)),
                const LogoText(),
                SizedBox(height: getProportionateScreenHeight(50)),
                const SignUpFields(),
                SizedBox(height: getProportionateScreenHeight(50)),
                CustomButton(text: 'SignUp', onTap: () {},),
              ],
            ),
          ),
        ],
      ),
    );
  }
}