import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gradproject2/View/Screen/ForumScreen/ForumScreen.dart';
import 'package:gradproject2/View/Screen/HomeScreen/HomeScreen.dart';
import 'package:gradproject2/View/Screen/ReportScreen/ReportScreen.dart';
import 'package:gradproject2/View/Screen/StatisticsScreen/StatisticsScreen.dart';
import 'package:pandabar/pandabar.dart';

import '../Static/StaticColor.dart';

class NavBar extends StatefulWidget {
  final String id;
  const NavBar({super.key, required this.id});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return PandaBar(
      buttonData: [
        PandaBarButtonData(
            id: 'Crops',
            icon: Icons.dashboard,
            title: 'Crops'
        ),
        PandaBarButtonData(
            id: 'Statistics',
            icon: Icons.add_chart_outlined,
            title: 'Statistics'
        ),
        PandaBarButtonData(
            id: 'Messages',
            icon: Icons.message_outlined,
            title: 'Messages'
        ),
        PandaBarButtonData(
            id: 'Report',
            icon: Icons.add_chart_outlined,
            title: 'Report'
        ),
      ],
      backgroundColor: white,
      buttonSelectedColor: Colors.grey,
      fabColors: const [
        Color(0xff58E680),
        Color(0xff1DAB45),
      ],

      fabIcon: const Icon(Icons.home,color: white,),
      onChange: (id) {
        setState(() {
          if(id=='Statistics'){
            Get.off(const StatisticsScreen());
            print("1");
          }
          else if(id=='Report'){
            Get.off(const ReportScreen());  print("1");
          }
          else if(id=='Messages'){
            Get.off(const ForumScreen());
          print("3");
          }
        });
      },
      onFabButtonPressed: () {
        Get.off(const HomeScreen());
        setState(() {});
      },
    );
  }
}
