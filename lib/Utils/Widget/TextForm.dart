import 'package:flutter/material.dart';

class TextForm extends StatelessWidget {
  const TextForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
       decoration: InputDecoration(
        hintText: "Enter your Email",
        labelText: "Email",
        border: OutlineInputBorder()
       ),
    );
  }
}