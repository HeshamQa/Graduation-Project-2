import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../Utils/Static/SizeConfig.dart';
import 'ReportDetails.dart';

class ReportBuilder extends StatelessWidget {
  const ReportBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 3,
      itemBuilder: (context, index) => Container(
        width: getProportionateScreenWidth(375),
        padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(15),
            vertical: getProportionateScreenHeight(15)),
        alignment: Alignment.centerLeft,
        margin: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(18),
            vertical: getProportionateScreenHeight(10)),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: const [BoxShadow(color: Colors.black54, blurRadius: 5)],
          borderRadius: BorderRadius.circular(15),
        ),
        child: const ReportDetails(),
      ),
    );
  }
}