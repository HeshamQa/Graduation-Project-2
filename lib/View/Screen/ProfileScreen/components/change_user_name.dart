import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gradproject2/Utils/Static/SizeConfig.dart';
import 'package:gradproject2/Utils/Widget/CustomButton.dart';
import 'package:gradproject2/Utils/Widget/TextForm.dart';
import 'package:gradproject2/main.dart';
import 'package:provider/provider.dart';

import '../../../../controller/provider/user_provider.dart';
import '../../../../generated/l10n.dart';

class ChangeUserName extends StatefulWidget {
  const ChangeUserName({super.key});

  @override
  State<ChangeUserName> createState() => _ChangeUserNameState();
}

class _ChangeUserNameState extends State<ChangeUserName> {
  TextEditingController userName = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getProportionateScreenHeight(300),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextForm(hint: S.of(context).EnterNewUserName, label: S.of(context).UserName, textEditingController: userName, obscure: false, enabled: true,),
            const Spacer(),
            CustomButton(text: S.of(context).Save, onTap: () async {
              await Provider.of<UserProvider>(context,listen: false).updateUserName(userName.text);
              sharedPreferences.setString('User_Name', userName.text);
              Get.back();
            }),
          ],
        ),
      ),
    );
  }
}
