import 'package:flutter/material.dart';
import 'package:gradproject2/Utils/Widget/LogoText.dart';
import 'package:gradproject2/View/Screen/StatisticsFileScreen/components/FileContainer.dart';

import '../../../Utils/Static/SizeConfig.dart';
import '../../../Utils/Widget/CustomButton.dart';
import '../../../Utils/Widget/CustomDropDown.dart';
import '../../../Utils/Widget/CustomRadioButton.dart';

class StatisticsFileScreen extends StatelessWidget {
  const StatisticsFileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const LogoText(),),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10),vertical: getProportionateScreenHeight(25)),
        child: Column(
          children: [
            const FileContainer(),
            SizedBox(height: getProportionateScreenHeight(35)),
            CustomButton(text: 'Download File', onTap: (){}),
            SizedBox(height: getProportionateScreenHeight(35)),
            const CustomDropDown(),
            SizedBox(height: getProportionateScreenHeight(25)),
            const CustomDropDown(),
            SizedBox(height: getProportionateScreenHeight(25)),
            const CustomDropDown(),
            SizedBox(height: getProportionateScreenHeight(15)),
            const CustomRadioButton(),
            const Spacer(),
            CustomButton(text: 'Files', onTap: (){}),
          ],
        ),
      ),
    );
  }
}
