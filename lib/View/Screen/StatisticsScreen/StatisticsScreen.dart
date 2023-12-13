import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gradproject2/Utils/Widget/CustomButton.dart';
import 'package:gradproject2/Utils/Widget/CustomDropDown.dart';
import 'package:gradproject2/Utils/Widget/CustomRadioButton.dart';
import 'package:gradproject2/Utils/Widget/drawer.dart';
import '../../../Utils/Static/SizeConfig.dart';
import '../../../Utils/Widget/LogoText.dart';
import '../../../Utils/Widget/NavBar.dart';

class StatisticsScreen extends StatefulWidget {
  const StatisticsScreen({super.key});

  @override
  State<StatisticsScreen> createState() => _StatisticsScreenState();
}

class _StatisticsScreenState extends State<StatisticsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const LogoText(),
      ),
      drawer: const CustomDrawer(),
      bottomNavigationBar: const NavBar(id: 'Statistics'),
      body: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(15)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: getProportionateScreenHeight(70),
            ),
            const Text("Statistics",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
            SizedBox(
              height: getProportionateScreenHeight(10),
            ),
            const CustomDropDown(),
            SizedBox(
              height: getProportionateScreenHeight(20),
            ),
            const CustomDropDown(),
            SizedBox(
              height: getProportionateScreenHeight(20),
            ),
            const CustomDropDown(),
            SizedBox(height: getProportionateScreenHeight(5),),
            const CustomRadioButton(),
            SizedBox(height: getProportionateScreenHeight(15),),
            CustomButton(text: "Show", onTap: () {
            },),
            SizedBox(height: getProportionateScreenHeight(40),),
            const Text("If You want More details click here",style: TextStyle(fontSize: 15)),
            SizedBox(height: getProportionateScreenHeight(8),),
            CustomButton(text: "Files", onTap: () {
            },),
          ],
        ),
      ),
    );
  }
}