import 'package:flutter/material.dart';
import '../../../../Utils/Static/SizeConfig.dart';
import '../../../../Utils/Widget/TextForm.dart';
import '../../../../generated/l10n.dart';

class TextFields extends StatelessWidget {
  final TextEditingController emailEditingController;
  final TextEditingController passwordEditingController;
  const TextFields({super.key,required this.emailEditingController,required this.passwordEditingController});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextForm(
          hint: S.of(context).EnterYourEmail,
          label: S.of(context).Email, textEditingController: emailEditingController, obscure: false, enabled: true,
        ),
        SizedBox(height: getProportionateScreenHeight(30)),
        TextForm(
          hint: S.of(context).EnteryourPassword,
          label: S.of(context).Password, textEditingController: passwordEditingController, obscure: true, enabled: true,
        ),
      ],
    );
  }
}
