import 'package:flutter/material.dart';

import '../Static/SizeConfig.dart';
import '../Static/StaticColor.dart';

class CustomDropDown extends StatefulWidget {
  const CustomDropDown({super.key});

  @override
  State<CustomDropDown> createState() => _CustomDropDownState();
}

class _CustomDropDownState extends State<CustomDropDown> {
  String selectedValue = "22";
  @override
  Widget build(BuildContext context) {
    return Container(
      width: getProportionateScreenWidth(375),
      decoration: BoxDecoration(
          border: Border.all(color: greendark),
          borderRadius: BorderRadius.circular(10)),
      child: DropdownButton(
        underline: Container(color: Colors.white),
        isExpanded: true,
        alignment: Alignment.center,
        value: selectedValue,
        padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(10)),
        onChanged: (String? newValue) {
          setState(() {
            selectedValue = newValue!;
          });
        },
        items: menuItems,
      ),
    );
  }
}
List<DropdownMenuItem<String>> menuItems = [
  const DropdownMenuItem(value: "22", child: Text("2022")),
  const DropdownMenuItem(value: "21", child: Text("2021")),
  const DropdownMenuItem(value: "20", child: Text("2020")),
  const DropdownMenuItem(value: "19", child: Text("2019")),
  const DropdownMenuItem(value: "18", child: Text("2018")),
  const DropdownMenuItem(value: "17", child: Text("2017")),
];
