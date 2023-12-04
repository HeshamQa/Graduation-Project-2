import 'package:flutter/material.dart';

class TextForm extends StatelessWidget {
  final String hint;
  final String label;
  const TextForm({
    super.key, required this.hint, required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
       decoration:  InputDecoration(
        hintText: hint,
        labelText: label,
        border: const OutlineInputBorder(

        ),
       ),
    );
  }
}