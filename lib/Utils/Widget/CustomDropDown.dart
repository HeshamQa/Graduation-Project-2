import 'package:flutter/material.dart';

import '../Static/SizeConfig.dart';
import '../Static/StaticColor.dart';

class CustomDropDown extends StatefulWidget {
  String selectedValue;
  List<DropdownMenuItem<String>> menuItems;
  CustomDropDown({super.key,required this.selectedValue,required this.menuItems});

  @override
  State<CustomDropDown> createState() => _CustomDropDownState();
}

class _CustomDropDownState extends State<CustomDropDown> {
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
        value: widget.selectedValue,
        padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(10)),
        onChanged: (String? newValue) {
          setState(() {
            widget.selectedValue = newValue!;
          });
        },
        items: widget.menuItems,
      ),
    );
  }
}