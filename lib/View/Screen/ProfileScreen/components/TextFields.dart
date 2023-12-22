import 'package:flutter/material.dart';
import '../../../../Utils/Static/SizeConfig.dart';
import '../../../../Utils/Widget/TextForm.dart';

class TextForms extends StatelessWidget {
  const TextForms({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextForm(
            hint: 'Enter Your Name',
            label: 'Name',
            textEditingController:
                TextEditingController(text: 'Hesham & Hajras'),
            obscure: false),
        SizedBox(height: getProportionateScreenHeight(5),),
        InkWell(onTap: () {}, child: const Text('Change')),
        SizedBox(height: getProportionateScreenHeight(20)),
        TextForm(
            hint: 'Enter Your Email',
            label: 'Email',
            textEditingController:
                TextEditingController(text: 'QaoudQa@gmail.com'),
            obscure: false),
        SizedBox(height: getProportionateScreenHeight(5),),
        InkWell(onTap: () {}, child: const Text('Change')),
        SizedBox(height: getProportionateScreenHeight(20)),
        TextForm(
            hint: 'Enter Your Password',
            label: 'Password',
            textEditingController: TextEditingController(text: '123123213'),
            obscure: true),
        SizedBox(height: getProportionateScreenHeight(5),),
        InkWell(onTap: () {}, child: const Text('Change')),
      ],
    );
  }
}
