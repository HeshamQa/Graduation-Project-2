import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gradproject2/Utils/Static/SizeConfig.dart';
import 'package:gradproject2/Utils/Widget/CustomButton.dart';
import 'package:gradproject2/Utils/Widget/CustomDropDown.dart';
import 'package:gradproject2/Utils/Widget/CustomRadioButton.dart';
import 'package:gradproject2/Utils/Widget/TextForm.dart';
import 'package:gradproject2/controller/provider/crops_provider.dart';
import 'package:gradproject2/models/dropdown_model.dart';
import 'package:provider/provider.dart';
import '../../../../generated/l10n.dart';

class AddCrop extends StatefulWidget {
  const AddCrop({super.key});

  @override
  State<AddCrop> createState() => _AddCropState();
}

class _AddCropState extends State<AddCrop> {
  TextEditingController dunum=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).AddNewCrops),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical:getProportionateScreenHeight(20),horizontal: getProportionateScreenWidth(10)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomDropDown(selectedValue: dropdownlist[1].value, menuItems: dropdownlist[1].item, func: (String? s) {
              setState(() {
                dropdownlist[1].value=s.toString();
              });
            },),
            SizedBox(height: getProportionateScreenHeight(25),),
            TextForm(hint: S.of(context).EnterlandAreainDUNUM, label: S.of(context).AreaDunums, textEditingController: dunum, obscure: false,enabled: true),
            SizedBox(height: getProportionateScreenHeight(25),),
            CustomDropDown(selectedValue: dropdownlist[2].value, menuItems: dropdownlist[2].item,func: (String? s) {
              setState(() {
                dropdownlist[2].value=s.toString();
              });
            },),
            SizedBox(
              height: getProportionateScreenHeight(25),
            ),
            const CustomRadioButton(),
            const Spacer(),
            CustomButton(text: S.of(context).Save, onTap: (){
              Provider.of<CropsProvider>(context,listen: false).addCrops(dropdownlist[2].value, gender!, dunum.text, dropdownlist[1].value);
              Get.back();
            })
          ],
        ),
      ),
    );
  }
}
