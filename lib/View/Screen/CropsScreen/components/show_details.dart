import 'package:flutter/material.dart';
import 'package:gradproject2/Utils/Static/SizeConfig.dart';

class ShowDetails extends StatelessWidget {
  final String textType;
  final String textDet;
  final String txt;
  const ShowDetails({
    super.key, required this.textType, required this.textDet, required this.txt,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: getProportionateScreenWidth(100),
          child: Text(
            textType,
            style: const TextStyle(
                fontWeight: FontWeight.w600, fontSize: 18),
          ),
        ),
        const Spacer(),
        SizedBox(
          width: getProportionateScreenWidth(100),
          child: Text(
            textDet,
            style: const TextStyle(
                fontWeight: FontWeight.w600, fontSize: 18),
          ),
        ),
        const Spacer(),
        SizedBox(
          width: getProportionateScreenWidth(100),
          child: Text(
            txt,
            style: const TextStyle(
                fontWeight: FontWeight.w600, fontSize: 18),
          ),
        ),
      ],
    );
  }
}
