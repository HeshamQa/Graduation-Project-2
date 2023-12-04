import 'package:flutter/material.dart';
import '../../../../Utils/Static/SizeConfig.dart';
import '../../../../Utils/Widget/TextForm.dart';

class TextFields extends StatelessWidget {
  const TextFields({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailEditingController=TextEditingController();
    TextEditingController passwordEditingController=TextEditingController();
    return Column(
      children: [
        TextForm(
          hint: 'Enter your Email',
          label: 'Email', textEditingController: emailEditingController, obscure: false,
        ),
        SizedBox(height: getProportionateScreenHeight(30)),
        TextForm(
          hint: 'Enter your Password',
          label: 'Password', textEditingController: passwordEditingController, obscure: true,
        ),
      ],
    );
  }
}
