import 'package:flutter/material.dart';
import 'package:gradproject2/View/Screen/HomeScreen/HomeScreen.dart';
import 'package:pandabar/pandabar.dart';

import '../Static/StaticColor.dart';

class NavBar extends StatefulWidget {
  NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return PandaBar(
      buttonData: [
        PandaBarButtonData(
            id: 'Grey',
            icon: Icons.dashboard,
            title: 'Grey'
        ),
        PandaBarButtonData(
            id: 'Blue',
            icon: Icons.book,
            title: 'Blue'
        ),
        PandaBarButtonData(
            id: 'Red',
            icon: Icons.account_balance_wallet,
            title: 'Red'
        ),
        PandaBarButtonData(
            id: 'Yellow',
            icon: Icons.notifications,
            title: 'Yellow'
        ),
      ],
      backgroundColor: white,
      buttonSelectedColor: greendark,
      fabColors: const [
        Color(0xff58E680),
        Color(0xff1DAB45),
      ],
      fabIcon: const Icon(Icons.home,color: white,),
      onChange: (id) {
        setState(() {
        });
      },
      onFabButtonPressed: () {
        HomeScreen();
        setState(() {});
      },
    );
  }
}
