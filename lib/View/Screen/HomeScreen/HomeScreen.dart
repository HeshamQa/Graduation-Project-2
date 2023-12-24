import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gradproject2/Utils/Static/StaticColor.dart';
import 'package:gradproject2/Utils/Widget/GoogleMap.dart';
import 'package:gradproject2/Utils/Widget/LogoText.dart';
import 'package:gradproject2/Utils/Widget/drawer.dart';
import 'package:gradproject2/View/Screen/HomeScreen/components/AddCrop.dart';
import '../../../Utils/Widget/NavBar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const LogoText(),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Get.to(const AddCrop());
          },
          child: const Icon(
            Icons.add,
            color: greendark,
          )),
      drawer: const CustomDrawer(),
      bottomNavigationBar: const NavBar(id: 'Home'),
      body: const GoogleMapWidget(),
    );
  }
}
