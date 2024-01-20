import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gradproject2/Utils/Static/SizeConfig.dart';
import 'package:gradproject2/Utils/Widget/CustomButton.dart';
import '../../../generated/l10n.dart';
import 'components/ShowContainer.dart';

class StatisticsShowScreen extends StatelessWidget {
  final String year, crop, city;

  const StatisticsShowScreen(
      {super.key, required this.year, required this.crop, required this.city});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(10),
          vertical: getProportionateScreenHeight(25)),
      child: Column(
        children: [
          ShowContainer(
            year: year,
            crop: crop,
            city: city,
          ),
          const Spacer(),
          CustomButton(text: S.of(context).Back, onTap: () {Get.back();}),
        ],
      ),
    );
  }
}
