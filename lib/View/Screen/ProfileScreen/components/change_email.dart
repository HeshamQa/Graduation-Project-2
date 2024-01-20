import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gradproject2/Utils/Static/SizeConfig.dart';
import 'package:gradproject2/Utils/Widget/CustomButton.dart';
import 'package:gradproject2/Utils/Widget/TextForm.dart';
import 'package:gradproject2/controller/provider/user_provider.dart';
import 'package:gradproject2/main.dart';
import 'package:provider/provider.dart';

import '../../../../generated/l10n.dart';

class ChangeModal extends StatefulWidget {
  const ChangeModal({super.key});

  @override
  State<ChangeModal> createState() => _ChangeModalState();
}

class _ChangeModalState extends State<ChangeModal> {
  TextEditingController email = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getProportionateScreenHeight(300),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextForm(hint: S.of(context).EnterYourNewEmail, label: S.of(context).Email, textEditingController: email, obscure: false, enabled: true,),
            const Spacer(),
            CustomButton(text: S.of(context).Save, onTap: () async {
              await Provider.of<UserProvider>(context,listen: false).updateUserEmail(email.text);
              sharedPreferences.setString('Email', email.text);
              Get.back();
            }),
          ],
        ),
      ),
    );
  }
}
