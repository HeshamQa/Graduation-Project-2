import 'package:flutter/material.dart';

class DropDownModel {
  String value;
  List<DropdownMenuItem<String>> item;
  DropDownModel({required this.value,required this.item});
}
List<DropDownModel> dropdownlist=[
  DropDownModel(value: '23', item: [
    const DropdownMenuItem(value: "23", child: Text("2023")),
    const DropdownMenuItem(value: "22", child: Text("2022")),
    const DropdownMenuItem(value: "21", child: Text("2021")),
    const DropdownMenuItem(value: "20", child: Text("2020")),
    const DropdownMenuItem(value: "19", child: Text("2019")),
    const DropdownMenuItem(value: "18", child: Text("2018")),
    const DropdownMenuItem(value: "17", child: Text("2017")),
  ]),
  DropDownModel(value: 'irbid', item: [
    const DropdownMenuItem(value: "irbid", child: Text("Irbid")),
    const DropdownMenuItem(value: "amman", child: Text("Amman")),
    const DropdownMenuItem(value: "zarqa", child: Text("Zarqa")),
    const DropdownMenuItem(value: "karak", child: Text("Karak")),
    const DropdownMenuItem(value: "mafraq", child: Text("Mafraq")),
    const DropdownMenuItem(value: "aqaba", child: Text("Aqaba")),
    const DropdownMenuItem(value: "madaba", child: Text("Madaba")),
  ]),
  DropDownModel(value: 'tomato', item: [
    const DropdownMenuItem(value: "tomato", child: Text("Tomato")),
    const DropdownMenuItem(value: "potato", child: Text("Potato")),
  ]),
];