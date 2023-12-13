import 'package:flutter/material.dart';
import 'package:gradproject2/Utils/Widget/NavBar.dart';
import '../../../Utils/Widget/LogoText.dart';

class ForumScreen extends StatelessWidget {
  const ForumScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const LogoText(),
      ),
      bottomNavigationBar: const NavBar(id: 'Messages'),
      body: ListView.builder(itemBuilder: (context, index) => Container(

      ),),
    );
  }
}
