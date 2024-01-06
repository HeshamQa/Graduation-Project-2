import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:gradproject2/Controller/Class/Crud.dart';
import 'dart:convert';
import '../../models/reports_model.dart';
import '../Class/Links.dart';
class ReportsProvider extends ChangeNotifier{
  List<ReportsModel> reports=[];
  Crud _crud = Crud();
  fetchReports() async {
    try {
      print(1);
      var response = await _crud.getRequest(LinkReports);
      print(2);
      if (response is Map) {
        var data = response['data'];
        print(3);
        if (data != null && response['status'] == "s") {
          print(4);
          for (var i in response['data']) {
            print(i);
            reports.add(ReportsModel.fromJson(i));
          }
        }
      } else {
        print("Unexpected response type: ${response.runtimeType}");
      }
    } catch (e) {
      print("Error occurred: $e");
    }
  }

}