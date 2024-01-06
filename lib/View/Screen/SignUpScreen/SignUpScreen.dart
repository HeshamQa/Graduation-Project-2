import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:gradproject2/Utils/Static/route.dart';
import 'package:gradproject2/Utils/Widget/BackGround.dart';
import 'package:gradproject2/Utils/Widget/CustomButton.dart';
import 'package:gradproject2/Utils/Widget/LogoText.dart';
import 'package:gradproject2/controller/auth/signup_controller.dart';
import '../../../Controller/Class/Crud.dart';
import '../../../Controller/Class/Links.dart';
import '../../../Utils/Static/SizeConfig.dart';
import '../../../Utils/Widget/TextForm.dart';
import 'components/SignUpFields.dart';

class SignUpScreen extends StatelessWidget {
  final TextEditingController userNameEditingController =
      TextEditingController();
  final TextEditingController emailEditingController = TextEditingController();
  final TextEditingController passwordEditingController =
      TextEditingController();
  final TextEditingController reSetPasswordEditingController =
      TextEditingController();
  Crud _crud = Crud();

  singUp(BuildContext context) async {
    print("1");
    try {
      var response = await _crud.postRequest(LinkSingup, {
        "User_Name": userNameEditingController.text,
        "Email": emailEditingController.text,
        "Password": passwordEditingController.text,
      });
      if (response['status'] == "s") {
        Get.toNamed(AppRoute.login);
      } else if (response['status'] == "f") {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text('Sign Up Error'),
            content: Text(response['message']),
            actions: [
              TextButton(
                child: Text('OK'),
                onPressed: () => Navigator.pop(context),
              ),
            ],
          ),
        );
      }
    } catch (e) {
      print("Error occurred: $e");
    }
  }

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
                      hint: 'Enter your Name',
                      label: 'UserName',
                      textEditingController: userNameEditingController,
                      obscure: false,
                    ),
                    SizedBox(height: getProportionateScreenHeight(20)),
                    TextForm(
                      hint: 'Enter your Email',
                      label: 'Email',
                      textEditingController: emailEditingController,
                      obscure: false,
                    ),
                    SizedBox(height: getProportionateScreenHeight(20)),
                    TextForm(
                      hint: 'Enter your Password',
                      label: 'Email',
                      textEditingController: passwordEditingController,
                      obscure: true,
                    ),
                    SizedBox(height: getProportionateScreenHeight(20)),
                    TextForm(
                      hint: 'Re enter your Password',
                      label: 'Confirm Password',
                      textEditingController: reSetPasswordEditingController,
                      obscure: true,
                    ),
                  ],
                ),
                SizedBox(height: getProportionateScreenHeight(50)),
                CustomButton(
                  text: 'SignUp',
                  onTap: () {
                    if (passwordEditingController.text ==
                        reSetPasswordEditingController.text) {
                      singUp(context);
                    } else {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: const Text('Sign Up Error'),
                          content: const Text("Passwords isn't equals!!"),
                          actions: [
                            TextButton(
                              child: const Text('OK'),
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
