import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gradproject2/Utils/Static/StaticColor.dart';
import 'package:gradproject2/Utils/Widget/CustomButton.dart';

import '../../../Utils/Static/SizeConfig.dart';
import '../../../Utils/Widget/LogoText.dart';
import '../../../Utils/Widget/NavBar.dart';

class StatisticsScreen extends StatefulWidget {
  const StatisticsScreen({super.key});

  @override
  State<StatisticsScreen> createState() => _StatisticsScreenState();
}

String selectedValue = "22";
String? gender;
class _StatisticsScreenState extends State<StatisticsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const LogoText(),
      ),
      drawer: Drawer(),
      bottomNavigationBar: NavBar(id: 'Statistics'),
      body: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(15)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: getProportionateScreenHeight(70),
            ),
            Text("Statistics",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
            SizedBox(
              height: getProportionateScreenHeight(10),
            ),
            Container(
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
            ),
            SizedBox(
              height: getProportionateScreenHeight(20),
            ),
            Container(
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
            ),
            SizedBox(
              height: getProportionateScreenHeight(20),
            ),
              Container(
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
            ),
            SizedBox(height: getProportionateScreenHeight(5),),
            RadioListTile(
              title: Text("Summer"),
              value: "Summer",
              groupValue: gender,
              onChanged: (value){
                setState(() {
                  gender = value.toString();
                });
              },
            ),
            RadioListTile(
              title: Text("Winter"),
              value: "Winter",
              groupValue: gender,
              onChanged: (value){
                setState(() {
                  gender = value.toString();
                });
              },
            ),
            SizedBox(height: getProportionateScreenHeight(15),),
            CustomButton(text: "Show", onTap: () {

            },),
            SizedBox(height: getProportionateScreenHeight(40),),
            Text("If You want More details click here",style: TextStyle(fontSize: 15)),
            SizedBox(height: getProportionateScreenHeight(8),),
            CustomButton(text: "Files", onTap: () {
            },),
          ],
        ),
      ),
    );
  }
}

List<DropdownMenuItem<String>> menuItems = [
  DropdownMenuItem(child: Text("2022"), value: "22"),
  DropdownMenuItem(child: Text("2021"), value: "21"),
  DropdownMenuItem(child: Text("2020"), value: "20"),
  DropdownMenuItem(child: Text("2019"), value: "19"),
  DropdownMenuItem(child: Text("2018"), value: "18"),
  DropdownMenuItem(child: Text("2017"), value: "17"),
];
