import 'package:flutter/material.dart';

import '../../../../Utils/Static/SizeConfig.dart';
import '../../../../Utils/Static/StaticColor.dart';
import 'FileContainerBody.dart';

class FileContainer extends StatelessWidget {
  const FileContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(15),
          vertical: getProportionateScreenHeight(15)),
      width: getProportionateScreenWidth(375),
      decoration: BoxDecoration(
        border: Border.all(color: greenlight),
        borderRadius: BorderRadius.circular(15),
      ),
      child: const FileContainerBody(),
    );
  }
}