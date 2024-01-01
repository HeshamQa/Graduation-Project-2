import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import '../../Utils/Static/cons_values.dart';
import '../../Utils/Static/route.dart';
import '../../Utils/Static/shared_pref.dart';

login(BuildContext context,TextEditingController phone,TextEditingController pass) async {
  EasyLoading.show(status: 'loading...');

  final response = await http.post(
    Uri.parse("${ConsValues.baseurl}login.php"),
    body: {
      "Email": phone.text,
      "Password": pass.text
    },
  );
  EasyLoading.dismiss();
  if (response.statusCode == 200) {
    var jsonBody = jsonDecode(response.body);
    print("jsonBody = $jsonBody");

    if (jsonBody["result"]) {
      General.savePrefInt(ConsValues.id, jsonBody['Id']);
      General.savePrefString(ConsValues.name, jsonBody['User_Name']);
      General.savePrefString(ConsValues.email, jsonBody['Email']);
      General.savePrefInt(ConsValues.user_type, jsonBody['Id_UserType']);
      ConsValues.isLoggedIn=true;
      if (jsonBody['Id_UserType'] == 1) {
        Get.offAllNamed(AppRoute.home);
      } else if (jsonBody['Id_UserType'] == 2) {
        Get.offAllNamed(AppRoute.home);
      } else {
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              content: Text(jsonBody["UserType Error"].toString()),
              actions: [
                TextButton(
                    onPressed: () {
                      Get.back();
                    },
                    child: const Text("OK"))
              ],
            );
          },
        );
      }
    } else {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Text(jsonBody["msg"]),
            actions: [
              TextButton(
                  onPressed: () {
                    Get.back();
                  },
                  child: const Text("OK"))
            ],
          );
        },
      );
    }
  }
}