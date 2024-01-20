import 'package:flutter/material.dart';
import 'package:gradproject2/Utils/Static/SizeConfig.dart';
import '../../../../Utils/Widget/TextForm.dart';
import '../../../../generated/l10n.dart';

class ForgetFields extends StatelessWidget {
  const ForgetFields({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    TextEditingController emailEditingController = TextEditingController();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(S.of(context).EnterYourEmailToReset,style: const TextStyle(fontSize: 17,fontWeight: FontWeight.w600),),
        SizedBox(height: getProportionateScreenHeight(20),),
        TextForm(
            hint: S.of(context).EnterYourEmail,
            label: S.of(context).Email,
            textEditingController: emailEditingController,
            obscure: false, enabled: true,),
      ],
    );
  }
}
