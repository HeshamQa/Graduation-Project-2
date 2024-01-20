import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../Utils/Static/StaticColor.dart';
import '../../../../Utils/Static/route.dart';
import '../../../../generated/l10n.dart';

class RememberForget extends StatelessWidget {
  const RememberForget({super.key});

  @override
  Widget build(BuildContext context) {
    bool check = true;
    return Row(
      children: [
        Checkbox(
          value: check,
          onChanged: (value) {
            // setState(() {
            //   check = value!;
            // });
          },
        ),
        Text(
          S.of(context).Rememberme,
          style: const TextStyle(
            color:grey,
          ),
        ),
        const Spacer(),
        InkWell(
          onTap: () {
            Get.toNamed(AppRoute.forget);
          },
          child: Text(
            "${S.of(context).ForgetPassword}?",
            style: const TextStyle(
              color: greendark,
              decorationColor: Colors.grey,
            ),
          ),
        ),
      ],
    );
  }
}
