import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gradproject2/Utils/Static/route.dart';

import '../../../../Utils/Static/StaticColor.dart';
import '../../../../generated/l10n.dart';

class SignUpButton extends StatelessWidget {
  const SignUpButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "${S.of(context).ForgetPassword}? ",
          style: const TextStyle(color: grey, fontSize: 16),
        ),
        InkWell(
            onTap: () {
              Get.toNamed(AppRoute.signup);
            },
            child: Text(
              S.of(context).SignUp,
              style: const TextStyle(color: greendark, fontSize: 16),
            )),
      ],
    );
  }
}
