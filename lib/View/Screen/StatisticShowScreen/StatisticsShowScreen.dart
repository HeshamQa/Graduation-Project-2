import 'package:flutter/material.dart';
import 'package:gradproject2/Utils/Static/SizeConfig.dart';
import 'package:gradproject2/Utils/Widget/CustomButton.dart';
import 'package:gradproject2/Utils/Widget/CustomDropDown.dart';
import 'package:gradproject2/Utils/Widget/CustomRadioButton.dart';
import 'package:gradproject2/Utils/Widget/LogoText.dart';

import '../../../models/dropdown_model.dart';
import 'components/ShowContainer.dart';

class StatisticsShowScreen extends StatelessWidget {
  const StatisticsShowScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const LogoText(),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10),vertical: getProportionateScreenHeight(25)),
        child: Column(
          children: [
            const ShowContainer(),
            SizedBox(height: getProportionateScreenHeight(50)),
            CustomDropDown(selectedValue: dropdownlist[0].value,menuItems: dropdownlist[0].item),
            SizedBox(height: getProportionateScreenHeight(25)),
            CustomDropDown(selectedValue: dropdownlist[1].value,menuItems: dropdownlist[1].item),
            SizedBox(height: getProportionateScreenHeight(25)),
            CustomDropDown(selectedValue: dropdownlist[2].value,menuItems: dropdownlist[2].item),
            SizedBox(height: getProportionateScreenHeight(15)),
            const CustomRadioButton(),
            const Spacer(),
            CustomButton(text: 'Show', onTap: (){}),
          ],
        ),
      ),
    );
  }
}