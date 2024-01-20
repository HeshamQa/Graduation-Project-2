import 'package:flutter/material.dart';
import 'package:gradproject2/Utils/Static/SizeConfig.dart';
import 'package:gradproject2/Utils/Widget/CustomButton.dart';
import 'package:gradproject2/Utils/Widget/TextForm.dart';

import '../../../../generated/l10n.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  TextEditingController current = TextEditingController();
  TextEditingController newPass = TextEditingController();
  TextEditingController confirmPass = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getProportionateScreenHeight(450),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TextForm(hint: S.of(context).EnterCurrentPassword, label: S.of(context).CurrentPassword, textEditingController: current, obscure: true, enabled: true,),
            TextForm(hint: S.of(context).EnterNewPassword, label: S.of(context).NewPassword, textEditingController: current, obscure: true, enabled: true,),
            TextForm(hint: S.of(context).EnterConfirmNewPassword, label: S.of(context).ConfirmNewPassword, textEditingController: current, obscure: true, enabled: true,),
            // const Spacer(),
            CustomButton(text: S.of(context).Save, onTap: (){}),
          ],
        ),
      ),
    );
  }
}
