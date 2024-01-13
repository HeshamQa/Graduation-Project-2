import 'package:flutter/material.dart';
import 'package:gradproject2/Utils/Static/SizeConfig.dart';
import 'package:gradproject2/Utils/Widget/CustomButton.dart';
import 'package:gradproject2/Utils/Widget/CustomDropDown.dart';
import 'package:gradproject2/Utils/Widget/TextForm.dart';
import 'package:gradproject2/models/dropdown_model.dart';

class AddCrop extends StatefulWidget {
  const AddCrop({super.key});

  @override
  State<AddCrop> createState() => _AddCropState();
}

class _AddCropState extends State<AddCrop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add New Crops"),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical:getProportionateScreenHeight(20),horizontal: getProportionateScreenWidth(10)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ///drop down for location
            CustomDropDown(selectedValue: dropdownlist[1].value, menuItems: dropdownlist[1].item, func: (String? s) {
              setState(() {
                dropdownlist[1].value=s.toString();
              });
            },),
            SizedBox(height: getProportionateScreenHeight(25),),
            TextForm(hint: 'Enter land height', label: 'height', textEditingController: TextEditingController(), obscure: false, enabled: true,),
            SizedBox(height: getProportionateScreenHeight(25),),
            TextForm(hint: 'Enter land width', label: 'width', textEditingController: TextEditingController(), obscure: false,enabled: true),
            SizedBox(height: getProportionateScreenHeight(25),),
            ///drop down for crop
            CustomDropDown(selectedValue: dropdownlist[2].value, menuItems: dropdownlist[2].item,func: (String? s) {
              setState(() {
                dropdownlist[2].value=s.toString();
              });
            },),
            const Spacer(),
            CustomButton(text: 'Save', onTap: (){})
          ],
        ),
      ),
    );
  }
}
