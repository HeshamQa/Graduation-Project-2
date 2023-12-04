
import 'package:flutter/material.dart';

import '../../../../Utils/Static/SizeConfig.dart';
import '../../../../Utils/Widget/TextForm.dart';

class SignUpFields extends StatelessWidget {
  const SignUpFields({super.key,});

  @override
  Widget build(BuildContext context) {
    TextEditingController userNameEditingController=TextEditingController();
    TextEditingController emailEditingController=TextEditingController();
    TextEditingController passwordEditingController=TextEditingController();
    TextEditingController reSetPasswordEditingController=TextEditingController();
    return Column(
      children: [
        TextForm(
          hint: 'Enter your Name',
          label: 'UserName', textEditingController: userNameEditingController, obscure: false,
        ),
        SizedBox(height: getProportionateScreenHeight(20)),
        TextForm(
          hint: 'Enter your Email',
          label: 'Email', textEditingController: emailEditingController, obscure: false,
        ),
        SizedBox(height: getProportionateScreenHeight(20)),
        TextForm(
          hint: 'Enter your Password',
          label: 'Email', textEditingController: passwordEditingController, obscure: true,
        ),
        SizedBox(height: getProportionateScreenHeight(20)),
        TextForm(
          hint: 'Re enter your Password',
          label: 'Confirm Password', textEditingController: reSetPasswordEditingController, obscure: true,
        ),
      ],
    );
  }
}
