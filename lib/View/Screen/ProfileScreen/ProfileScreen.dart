import 'package:flutter/material.dart';
import 'package:gradproject2/Utils/Static/SizeConfig.dart';
import 'package:gradproject2/Utils/Widget/CustomButton.dart';
import 'package:gradproject2/Utils/Widget/LogoText.dart';
import 'package:gradproject2/Utils/Widget/TextForm.dart';
import 'package:gradproject2/View/Screen/ProfileScreen/components/ProfileImage.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const LogoText(),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(15),
            vertical: getProportionateScreenHeight(30)),
        child: Column(
          children: [
            const ProfileImage(),
            SizedBox(height: getProportionateScreenHeight(15)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                    width: getProportionateScreenWidth(290),
                    child: TextForm(
                        hint: 'Enter Your Name',
                        label: 'Name',
                        textEditingController:
                            TextEditingController(text: 'Hesham AlQaoud'),
                        obscure: false)),
                InkWell(onTap: () {}, child: Text('Change')),
              ],
            ),
            SizedBox(
              height: getProportionateScreenHeight(20),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                    width: getProportionateScreenWidth(290),
                    child: TextForm(
                        hint: 'Enter Your Email',
                        label: 'Email',
                        textEditingController:
                            TextEditingController(text: 'QaoudQa@gmail.com'),
                        obscure: false)),
                InkWell(onTap: () {}, child: Text('Change')),
              ],
            ),
            SizedBox(
              height: getProportionateScreenHeight(20),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                    width: getProportionateScreenWidth(290),
                    child: TextForm(
                        hint: 'Enter Your Password',
                        label: 'Password',
                        textEditingController:
                            TextEditingController(text: '123123213'),
                        obscure: true)),
                InkWell(onTap: () {}, child: Text('Change')),
              ],
            ),
            const Spacer(),
            CustomButton(text: 'save', onTap: () {}),
          ],
        ),
      ),
    );
  }
}
