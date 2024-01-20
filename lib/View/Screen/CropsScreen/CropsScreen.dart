import 'package:flutter/material.dart';
import 'package:gradproject2/Utils/Static/SizeConfig.dart';
import 'package:gradproject2/Utils/Widget/CustomButton.dart';
import 'package:gradproject2/Utils/Widget/CustomDropDown.dart';
import 'package:gradproject2/Utils/Widget/CustomRadioButton.dart';
import 'package:gradproject2/Utils/Widget/LogoText.dart';
import 'package:gradproject2/Utils/Widget/NavBar.dart';
import 'package:gradproject2/Utils/Widget/drawer.dart';
import '../../../Utils/Static/StaticColor.dart';
import '../../../generated/l10n.dart';
import '../../../models/dropdown_model.dart';
import 'components/show_details.dart';

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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(15)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    S.of(context).Crops,
                    style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: getProportionateScreenHeight(15)),
                  CustomDropDown(selectedValue: dropdownlist[2].value,menuItems: dropdownlist[2].item, func: (String? s) {  },),
                  const CustomRadioButton(),
                  CustomButton(text: S.of(context).Show, onTap: () {}),
                  SizedBox(height: getProportionateScreenHeight(10),),
                ],
              ),
            ),
            Container(padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(15),
                vertical: getProportionateScreenHeight(15)),
                margin:EdgeInsets.symmetric(
    horizontal: getProportionateScreenWidth(15)),
                width: getProportionateScreenWidth(375),
                decoration: BoxDecoration(
                  border: Border.all(color: greenlight),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  children: [
                    ShowDetails(textType: S.of(context).City, textDet: S.of(context).Production, txt: S.of(context).Space,),
                    const Divider(),
                    ShowDetails(textType: S.of(context).Irbid, textDet: '101015', txt: '20115',),
                    const Divider(),
                    ShowDetails(textType: S.of(context).Amman, textDet: '252005', txt: '12345',),
                    const Divider(),
                    ShowDetails(textType: S.of(context).Mafraq, textDet: '123456', txt: '12345',),
                    const Divider(),
                    ShowDetails(textType: S.of(context).Maan, textDet: '123456', txt: '12345',),
                    const Divider(),
                    ShowDetails(textType: S.of(context).Zarqa, textDet: '123456', txt: '12345',),
                    const Divider(),
                    ShowDetails(textType: S.of(context).Karak, textDet: '123456', txt: '12345',),
                    const Divider(),
                    ShowDetails(textType: S.of(context).Madaba, textDet: '123456', txt: '12345',),
                    const Divider(),
                    ShowDetails(textType: S.of(context).Aqaba, textDet: '123456', txt: '12345',),
                  ],
                ),
            )
          ],
        ),
      ),
    );
  }
}
