import 'package:flutter/material.dart';
import 'package:gradproject2/View/Screen/ProfileScreen/components/change_email.dart';
import 'package:gradproject2/View/Screen/ProfileScreen/components/change_password.dart';
import 'package:gradproject2/View/Screen/ProfileScreen/components/change_user_name.dart';
import 'package:gradproject2/main.dart';
import '../../../../Utils/Static/SizeConfig.dart';
import '../../../../Utils/Widget/TextForm.dart';
import '../../../../generated/l10n.dart';

class TextForms extends StatelessWidget {
  const TextForms({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextForm(
            hint: S.of(context).EnterYourName,
            label: S.of(context).Name,
            textEditingController:
                TextEditingController(text: sharedPreferences.getString("User_Name")),
            obscure: false, enabled: false,),
        SizedBox(height: getProportionateScreenHeight(5),),
        InkWell(onTap: () {
          showModalBottomSheet(context: context, builder: (context) => const ChangeUserName(),);
        }, child: Text(S.of(context).Change)),
        SizedBox(height: getProportionateScreenHeight(20)),
        TextForm(
            hint: S.of(context).EnterYourEmail,
            label: S.of(context).Email,
            textEditingController:
                TextEditingController(text: sharedPreferences.getString("Email")),
            obscure: false, enabled: false,),
        SizedBox(height: getProportionateScreenHeight(5),),
        InkWell(onTap: () {
          showModalBottomSheet(context: context, builder: (context) => const ChangeModal());
        }, child: Text(S.of(context).Change)),
        SizedBox(height: getProportionateScreenHeight(20)),
        TextForm(
          hint: S.of(context).EnteryourPassword,
          label: S.of(context).Password,
          textEditingController:
          TextEditingController(text: sharedPreferences.getString("Email")),
          obscure: true, enabled: false,),
        SizedBox(height: getProportionateScreenHeight(5),),
        InkWell(onTap: () {
          showModalBottomSheet(context: context, builder: (context) => const ChangePassword());
        }, child: Text(S.of(context).Change)),
        SizedBox(height: getProportionateScreenHeight(20)),
      ],
    );
  }
}
