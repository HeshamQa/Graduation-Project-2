import 'package:flutter/material.dart';
import 'package:gradproject2/Utils/Static/SizeConfig.dart';
import 'package:gradproject2/Utils/Static/StaticColor.dart';
import 'package:gradproject2/Utils/Widget/TextForm.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(child: 
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(alignment :Alignment.center ,  child: const Text("ORGAgriculture", style: TextStyle(color: greendark,fontSize: 35),),)
         , SizedBox(height: getProportionateScreenHeight(25),),
        Padding(padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(25)),child: Column(
          children: [
            const TextForm(hint: 'Enter your Email', label: 'Email',),
              SizedBox(height: getProportionateScreenHeight(25),),
            const TextForm(hint: 'Enter your Email', label: 'Email',),
          ],
        )),
      ],
    ));
  }
}
