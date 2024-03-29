import 'package:flutter/material.dart';
import 'package:gradproject2/View/Screen/StatisticShowScreen/StatisticsShowScreen.dart';
import 'package:gradproject2/View/Screen/StatisticsFileScreen/StatisticsFileScreen.dart';
import '../../../../Utils/Static/SizeConfig.dart';
import '../../../../Utils/Widget/CustomButton.dart';
import '../../../../Utils/Widget/CustomDropDown.dart';
import '../../../../Utils/Widget/CustomRadioButton.dart';
import '../../../../generated/l10n.dart';
import '../../../../models/dropdown_model.dart';

class StatisticsBody extends StatefulWidget {
  const StatisticsBody({super.key});

  @override
  State<StatisticsBody> createState() => _StatisticsBodyState();
}

class _StatisticsBodyState extends State<StatisticsBody> {
  String year='2022';
  String crop='Tomato';
  String city='Irbid';
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
      EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(15)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: getProportionateScreenHeight(70),
          ),
          Text(S.of(context).Statistics,
              style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
          SizedBox(
            height: getProportionateScreenHeight(10),
          ),
          CustomDropDown(selectedValue: dropdownlist[0].value,menuItems: dropdownlist[0].item, func: (String? s) {
            setState(() {
              dropdownlist[0].value=s.toString();
              year=s.toString();
            });
          },),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          CustomDropDown(selectedValue: dropdownlist[1].value,menuItems: dropdownlist[1].item, func: (String? s) {
            setState(() {
              dropdownlist[1].value=s.toString();
              city=s.toString();
            });
            },),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          CustomDropDown(selectedValue: dropdownlist[2].value,menuItems: dropdownlist[2].item, func: (String? s) {
            setState(() {
              dropdownlist[2].value=s.toString();
              crop=s.toString();
            });
          },),
          SizedBox(height: getProportionateScreenHeight(5),),
          const CustomRadioButton(),
          SizedBox(height: getProportionateScreenHeight(15),),
          CustomButton(text: S.of(context).Show, onTap: () {
           showModalBottomSheet(context: context, builder: (context) => StatisticsShowScreen(year: year, crop: crop, city: city,));
          },),
          SizedBox(height: getProportionateScreenHeight(40),),
          Text(S.of(context).IfYouwantMoredetails,style: const TextStyle(fontSize: 15)),
          SizedBox(height: getProportionateScreenHeight(8),),
          CustomButton(text: S.of(context).Files, onTap: () {
            showModalBottomSheet(context: context, builder: (context) => StatisticsFileScreen(year: year, crop: crop, city: city,));
          },),
        ],
      ),
    );
  }
}
