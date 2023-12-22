import 'package:flutter/material.dart';
import 'package:gradproject2/Utils/Static/SizeConfig.dart';
import 'package:gradproject2/Utils/Widget/CustomButton.dart';
import 'package:gradproject2/Utils/Widget/CustomDropDown.dart';
import 'package:gradproject2/Utils/Widget/CustomRadioButton.dart';
import 'package:gradproject2/Utils/Widget/GoogleMap.dart';
import 'package:gradproject2/Utils/Widget/LogoText.dart';
import 'package:gradproject2/Utils/Widget/NavBar.dart';
import 'package:gradproject2/Utils/Widget/drawer.dart';

class CropsScreen extends StatefulWidget {
  const CropsScreen({super.key});

  @override
  State<CropsScreen> createState() => _CropsScreenState();
}

class _CropsScreenState extends State<CropsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const LogoText(),
      ),
      drawer: const CustomDrawer(),
      bottomNavigationBar: const NavBar(id: 'Crops'),
      body: Column(
        children: [
          Padding(
            padding:
                EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(15)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Crops',
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: getProportionateScreenHeight(15)),
                const CustomDropDown(),
                const CustomRadioButton(),
                CustomButton(text: 'Show', onTap: () {}),
                SizedBox(height: getProportionateScreenHeight(10),),
              ],
            ),
          ),
          const Expanded(
            child: GoogleMapWidget(),
          )
        ],
      ),
    );
  }
}
