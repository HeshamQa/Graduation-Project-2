import 'package:flutter/material.dart';
import 'package:gradproject2/Utils/Widget/BackGround.dart';
import 'package:gradproject2/Utils/Widget/CustomButton.dart';
import 'package:gradproject2/Utils/Widget/LogoText.dart';
import '../../../Utils/Static/SizeConfig.dart';
import '../../../Utils/Widget/TextForm.dart';
import '../../../controller/auth/signup_controller.dart';
import '../../../generated/l10n.dart';

class SignUpScreen extends StatelessWidget {
  final TextEditingController userNameEditingController = TextEditingController();
  final TextEditingController emailEditingController = TextEditingController();
  final TextEditingController passwordEditingController = TextEditingController();
  final TextEditingController reSetPasswordEditingController = TextEditingController();
  SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          const BG(),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(20)),
            child: Column(
              children: [
                SizedBox(height: getProportionateScreenHeight(100)),
                const LogoText(),
                SizedBox(height: getProportionateScreenHeight(50)),
                Column(
                  children: [
                    TextForm(
                      hint: S.of(context).EnterYourName,
                      label: S.of(context).UserName,
                      textEditingController: userNameEditingController,
                      obscure: false, enabled: true,
                    ),
                    SizedBox(height: getProportionateScreenHeight(20)),
                    TextForm(
                      hint:S.of(context).EnterYourEmail,
                      label: S.of(context).Email,
                      textEditingController: emailEditingController,
                      obscure: false, enabled: true,
                    ),
                    SizedBox(height: getProportionateScreenHeight(20)),
                    TextForm(
                      hint: S.of(context).EnteryourPassword,
                      label: S.of(context).Password,
                      textEditingController: passwordEditingController,
                      obscure: true, enabled: true,
                    ),
                    SizedBox(height: getProportionateScreenHeight(20)),
                    TextForm(
                      hint: 'Re ${S.of(context).EnteryourPassword}',
                      label: S.of(context).ConfirmPassword,
                      textEditingController: reSetPasswordEditingController,
                      obscure: true, enabled: true,
                    ),
                  ],
                ),
                SizedBox(height: getProportionateScreenHeight(50)),
                CustomButton(
                  text: S.of(context).SignUp,
                  onTap: () {
                    if (passwordEditingController.text ==
                        reSetPasswordEditingController.text) {
                      singUp(context,userNameEditingController,emailEditingController,passwordEditingController);
                    } else {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          title:  Text(S.of(context).SignUpError),
                          content:  Text("${S.of(context).Passwordsisntequals}!!"),
                          actions: [
                            TextButton(
                              child: Text(S.of(context).OK),
                              onPressed: () => Navigator.pop(context),
                            ),
                          ],
                        ),
                      );
                    }
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
