import 'package:flutter/material.dart';
import 'package:gradproject2/Utils/Widget/TextForm.dart';

class AddCrop extends StatelessWidget {
  const AddCrop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add New Crops"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextForm(hint: 'hint', label: 'label', textEditingController: TextEditingController(), obscure: false),
        ],
      ),
    );
  }
}
