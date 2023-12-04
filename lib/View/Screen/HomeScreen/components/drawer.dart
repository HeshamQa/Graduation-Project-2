import 'package:flutter/material.dart';
import '../../../../Utils/Static/SizeConfig.dart';
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
            text: "Profile", ontap: (){},
          ),
          // DrawerElements(
          //   icon: Icons.request_page_outlined,
          //   text: "Orders", ontap: (){},
          // ),
          // DrawerElements(
          //     ontap: (){},
          //     icon: Icons.chat_bubble_outline,
          //     text: "Contact us"
          // ),
          // DrawerElements(
          //   icon: Icons.wallet_outlined,
          //   text: "Wallet", ontap: (){},
          // ),
          // DrawerElements(icon: Icons.subscriptions_outlined, text:"MySubscription", ontap: (){},),
          const Spacer(),
          DrawerElements(
            icon: Icons.policy_outlined,
            text: "Terms & policy", ontap: (){},
          ),
          DrawerElements(
            icon: Icons.logout_outlined,
            text: "Logout", ontap: (){},
          ),

        ],
      ),
    );
  }
}