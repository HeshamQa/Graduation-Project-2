import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gradproject2/Utils/Widget/NavBar.dart';
import 'package:provider/provider.dart';
import '../../../Controller/auth/Report_controller.dart';
import '../../../Utils/Widget/LogoText.dart';
import '../../../Utils/Widget/drawer.dart';
import 'components/ReportBuilder.dart';

class ReportScreen extends StatefulWidget {
   ReportScreen({super.key});

  @override
  State<ReportScreen> createState() => _ReportScreenState();

}

class _ReportScreenState extends State<ReportScreen> {

  @override
  void initState() {
    Provider.of<ReportsProvider>(context , listen: false).fetchReports();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const LogoText(),
      ),
      drawer: const CustomDrawer(),
      bottomNavigationBar: const NavBar(id: 'Report'),
      body: const ReportBuilder(),
    );
  }
}