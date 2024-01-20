// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gradproject2/Utils/Static/SizeConfig.dart';
import 'package:gradproject2/Utils/Static/StaticColor.dart';
import 'package:gradproject2/Utils/Static/route.dart';
import 'package:gradproject2/Utils/Widget/CustomButton.dart';
import 'package:gradproject2/Utils/Widget/CustomDropDown.dart';
import 'package:gradproject2/Utils/Widget/CustomRadioButton.dart';
import 'package:gradproject2/Utils/Widget/GoogleMap.dart';
import 'package:gradproject2/Utils/Widget/LogoText.dart';
import 'package:gradproject2/Utils/Widget/drawer.dart';
import 'package:gradproject2/View/Screen/HomeScreen/components/AddCrop.dart';
import 'package:gradproject2/models/dropdown_model.dart';
import 'package:provider/provider.dart';
import '../../../Utils/Widget/NavBar.dart';
import '../../../controller/provider/crops_provider.dart';
import '../../../generated/l10n.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const LogoText(),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Get.to(const AddCrop());
          },
          child: const Icon(
            Icons.add,
            color: greendark,
          )),
      drawer: const CustomDrawer(),
      bottomNavigationBar: const NavBar(id: 'Home'),
      body: Column(
        children: [
          CustomDropDown(selectedValue: dropdownlist[2].value, menuItems: dropdownlist[2].item, func: (String? s) {
            setState(() {
              dropdownlist[2].value=s.toString();
            });
          },),
          const CustomRadioButton(),
          CustomButton(text: S.of(context).Show, onTap: (){
            getCrops();
            Get.offAllNamed(AppRoute.home);
          }),
          SizedBox(height: getProportionateScreenHeight(10),),
          const Expanded(child: GoogleMapWidget()),
        ],
      ),
    );
  }
}