import 'package:flutter/material.dart';
import 'package:pandabar/pandabar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String page = 'Grey';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      bottomNavigationBar: PandaBar(
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
        onChange: (id) {
          setState(() {
            page = id;
          });
        },
        onFabButtonPressed: () {

        },
      ),
        body: Builder(
        builder: (context) {
          switch (page) {
            case 'Grey':
              return Container(color: Colors.grey.shade900);
            case 'Blue':
              return Container(color: Colors.blue.shade900);
            case 'Red':
              return Container(color: Colors.red.shade900);
            case 'Yellow':
              return Container(color: Colors.yellow.shade700);
            default:
              return Container();
          }
        }
    ),);
  }
}
