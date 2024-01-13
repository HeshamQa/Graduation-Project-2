import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gradproject2/Utils/Static/route.dart';
import 'package:gradproject2/View/Screen/ProfileScreen/ProfileScreen.dart';
import 'package:gradproject2/View/Screen/weather_screen/weather_screen.dart';
import 'package:gradproject2/main.dart';
import '../Static/SizeConfig.dart';
import 'drawerElement.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: getProportionateScreenWidth(200),
      child: Column(
        children: [
          SizedBox(height: getProportionateScreenHeight(50),),
          DrawerElements(
            icon: Icons.person_2_outlined,
            text: "Profile", ontap: (){
              Get.to(const ProfileScreen());
          },
          ),
          DrawerElements(
            icon: Icons.language,
            text: "Language", ontap: (){},
          ),
          DrawerElements(
              ontap: (){
                Get.to(const WeatherScreen());
              },
              icon: Icons.ac_unit,
              text: "Weather"
          ),
          DrawerElements(
            icon: Icons.mode,
            text: "Dark Mode", ontap: (){},
          ),
          const Spacer(),
          DrawerElements(
            icon: Icons.logout_outlined,
            text: "Logout", ontap: (){
            sharedPreferences.remove("Id");
            sharedPreferences.remove("Email");
            sharedPreferences.remove("User_Name");
            sharedPreferences.remove("Password");
            sharedPreferences.remove("Id_UserType");
            Get.offAllNamed(AppRoute.login);
          },
          ),

        ],
      ),
    );
  }
}