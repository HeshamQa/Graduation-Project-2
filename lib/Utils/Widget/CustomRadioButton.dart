import 'package:flutter/material.dart';

class CustomRadioButton extends StatefulWidget {
  const CustomRadioButton({super.key});

  @override
  State<CustomRadioButton> createState() => _CustomRadioButtonState();
}

class _CustomRadioButtonState extends State<CustomRadioButton> {
  String? gender;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RadioListTile(
          title: Text("Summer"),
          value: "Summer",
          groupValue: gender,
          onChanged: (value) {
            setState(() {
              gender = value.toString();
            });
          },
        ),
        RadioListTile(
          title: Text("Winter"),
          value: "Winter",
          groupValue: gender,
          onChanged: (value) {
            setState(() {
              gender = value.toString();
            });
          },
        )
      ],
    );
  }
}
