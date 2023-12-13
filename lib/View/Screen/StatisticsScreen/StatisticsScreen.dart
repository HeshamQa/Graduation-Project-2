import 'package:flutter/material.dart';
import 'package:gradproject2/Utils/Widget/NavBar.dart';

import '../../../Utils/Widget/LogoText.dart';

class StatisticsScreen extends StatelessWidget {
  const StatisticsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const LogoText(),
      ),
      bottomNavigationBar: NavBar(id:'Statistics'),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DropdownMenu(
              dropdownMenuEntries: List.empty(),
          )
        ],
      ),
    );
  }
}
