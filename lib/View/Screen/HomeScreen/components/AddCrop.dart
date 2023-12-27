import 'package:flutter/material.dart';
import 'package:gradproject2/Utils/Static/SizeConfig.dart';
import 'package:gradproject2/Utils/Widget/CustomButton.dart';
import 'package:gradproject2/Utils/Widget/CustomDropDown.dart';
import 'package:gradproject2/Utils/Widget/TextForm.dart';

class AddCrop extends StatelessWidget {
  const AddCrop({super.key});

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
            const CustomDropDown(),
            SizedBox(height: getProportionateScreenHeight(25),),
            TextForm(hint: 'Enter land height', label: 'height', textEditingController: TextEditingController(), obscure: false),
            SizedBox(height: getProportionateScreenHeight(25),),
            TextForm(hint: 'Enter land width', label: 'width', textEditingController: TextEditingController(), obscure: false),
            SizedBox(height: getProportionateScreenHeight(25),),
            ///drop down for crop
            const CustomDropDown(),
            const Spacer(),
            CustomButton(text: 'Save', onTap: (){})
          ],
        ),
      ),
    );
  }
}
