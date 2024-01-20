// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:gradproject2/Utils/Static/SizeConfig.dart';
import 'package:gradproject2/Utils/Widget/CustomButton.dart';
import 'package:gradproject2/Utils/Widget/CustomDropDown.dart';
import 'package:gradproject2/Utils/Widget/CustomRadioButton.dart';
import 'package:gradproject2/Utils/Widget/LogoText.dart';
import 'package:gradproject2/Utils/Widget/NavBar.dart';
import 'package:gradproject2/Utils/Widget/drawer.dart';
import 'package:gradproject2/controller/provider/crops_provider.dart';
import 'package:provider/provider.dart';
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
   String amman='0';
   String irbid='0';
   String mafraq='0';
   String maan='0';
   String zarqa='0';
   String karak='0';
   String madaba='0';
  String aqaba='0';

  Future<void> getCrops() async {
    amman = await Provider.of<CropsProvider>(context, listen: false)
        .fetchCrops("Amman", gender!, dropdownlist[2].value);
    irbid =await Provider.of<CropsProvider>(context, listen: false)
        .fetchCrops("Irbid", gender!, dropdownlist[2].value);
    mafraq =await Provider.of<CropsProvider>(context, listen: false)
        .fetchCrops("Mafraq", gender!, dropdownlist[2].value);
    maan = await Provider.of<CropsProvider>(context, listen: false)
        .fetchCrops("Ma'an", gender!, dropdownlist[2].value);
    zarqa =await Provider.of<CropsProvider>(context, listen: false)
        .fetchCrops("Zarqa", gender!, dropdownlist[2].value);
    karak =await Provider.of<CropsProvider>(context, listen: false)
        .fetchCrops("Karak", gender!, dropdownlist[2].value);
    madaba =await Provider.of<CropsProvider>(context, listen: false)
        .fetchCrops("Madaba", gender!, dropdownlist[2].value);
    aqaba =await Provider.of<CropsProvider>(context, listen: false)
        .fetchCrops("Aqaba", gender!, dropdownlist[2].value);
    setState(() {
    });
  }

  @override
  void initState() {
    getCrops();
    super.initState();
  }

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
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(15)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    S.of(context).Crops,
                    style: const TextStyle(
                        fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: getProportionateScreenHeight(15)),
                  CustomDropDown(
                    selectedValue: dropdownlist[2].value,
                    menuItems: dropdownlist[2].item,
                    func: (String? s) {
                      setState(() {
                        dropdownlist[2].value = s.toString();
                      });
                    },
                  ),
                  const CustomRadioButton(),
                  CustomButton(text: S.of(context).Show, onTap: () async {
                    await getCrops();
                    setState(() {
                    });
                  }),
                  SizedBox(
                    height: getProportionateScreenHeight(10),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(15),
                  vertical: getProportionateScreenHeight(15)),
              margin: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(15)),
              width: getProportionateScreenWidth(375),
              decoration: BoxDecoration(
                border: Border.all(color: greenlight),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  ShowDetails(
                    textType: S.of(context).City,
                    txt: S.of(context).Space,
                  ),
                  const Divider(),
                  ShowDetails(
                    textType: S.of(context).Irbid,
                    txt: irbid,
                  ),
                  const Divider(),
                  ShowDetails(
                    textType: S.of(context).Amman,
                    txt: amman,
                  ),
                  const Divider(),
                  ShowDetails(
                    textType: S.of(context).Mafraq,
                    txt: mafraq,
                  ),
                  const Divider(),
                  ShowDetails(
                    textType: S.of(context).Maan,
                    txt: maan,
                  ),
                  const Divider(),
                  ShowDetails(
                    textType: S.of(context).Zarqa,
                    txt: zarqa,
                  ),
                  const Divider(),
                  ShowDetails(
                    textType: S.of(context).Karak,
                    txt: karak,
                  ),
                  const Divider(),
                  ShowDetails(
                    textType: S.of(context).Madaba,
                    txt: madaba,
                  ),
                  const Divider(),
                  ShowDetails(
                    textType: S.of(context).Aqaba,
                    txt: aqaba,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
