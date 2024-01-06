import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gradproject2/Utils/Static/SizeConfig.dart';
import 'package:gradproject2/Utils/Widget/BackGround.dart';
import 'package:gradproject2/controller/auth/Report_controller.dart';
import '../../../Controller/Class/Crud.dart';
import '../../../Controller/Class/Links.dart';
import '../../../Utils/Static/route.dart';
import '../../../Utils/Widget/CustomButton.dart';
import '../../../Utils/Widget/LogoText.dart';
import '../../../main.dart';
import 'components/Remember&Forget.dart';
import 'components/SignUpButton.dart';
import 'components/TextFields.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}
class _LoginScreenState extends State<LoginScreen> {

  Login(BuildContext context) async {
    try {
      var response = await _crud.postRequest(LinkLogin, {
        "Email": emailEditingController.text,
        "Password": passwordEditingController.text,

      });
      if (response['status'] == "s") {
        if (response['data']['Id_UserType'] == "1") {
          sharedPreferences.setString("Id", response['data']['Id'].toString());
          sharedPreferences.setString("Email", response['data']['Email']);
          sharedPreferences.setString("User_Name", response['data']['User_Name']);
          sharedPreferences.setString("Password", response['data']['Password']);
          sharedPreferences.setString("Id_UserType", response['data']['Id_UserType'].toString());
          Get.offAllNamed(AppRoute.home);
          print("3");

        } else if(response['data']['Id_UserType'] == "2"){
          sharedPreferences.setString("Id", response['data']['Id'].toString());
          sharedPreferences.setString("Email", response['data']['Email']);
          sharedPreferences.setString("User_Name", response['data']['User_Name']);
          sharedPreferences.setString("Password", response['data']['Password']);
          sharedPreferences.setString("Id_UserType", response['data']['Id_UserType'].toString());
          Get.offAllNamed(AppRoute.home);
          print("3");
        }
      }
    } catch (e) {
      print("errrrrrrrrrror $e");
    }
  }


  Crud _crud = Crud();
  TextEditingController emailEditingController=TextEditingController();
  TextEditingController passwordEditingController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          const BG(),
          Padding(
            padding:
                EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
            child: Column(
              children: [
                SizedBox(height: getProportionateScreenHeight(100)),
                const LogoText(),
                SizedBox(height: getProportionateScreenHeight(75)),
                TextFields(emailEditingController: emailEditingController,passwordEditingController: passwordEditingController,),
                SizedBox(height: getProportionateScreenHeight(15)),
                const RememberForget(),
                SizedBox(height: getProportionateScreenHeight(50)),
                CustomButton(text: 'LogIn', onTap: () {
                  print("1");
                  Login(context);

                  },),
                SizedBox(height: getProportionateScreenHeight(25)),
                const SignUpButton(),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}