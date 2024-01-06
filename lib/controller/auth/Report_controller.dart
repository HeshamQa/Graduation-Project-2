import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:gradproject2/Controller/Class/Crud.dart';
import 'dart:convert';
import '../../models/reports_model.dart';
import '../Class/Links.dart';

// class ReportController extends GetxController {
//   var isLoading = false.obs;
//   var reports = <Map<String, dynamic>>[].obs;
//   Crud _crud = Crud();
//
//   Future<void> fetchReports() async {
//     isLoading(true);
//     try {
//       var response = await _crud.getRequest(LinkReports);
//       print(response);
//       if (response.statusCode == 200) {
//         var data = json.decode(response.body);
//         if (data['status'] == "s") {
//           reports.assignAll(data['data']);
//         } else {
//           print("Error: ${data['message']}");
//         }
//       } else {
//         print("Error: ${response.statusCode}");
//       }
//     } catch (e) {
//       print("Error occurred: $e");
//     } finally {
//       isLoading(false);
//     }
//   }
// }


class ReportsProvider extends ChangeNotifier{
  List<ReportsModel> reports=[];
  Crud _crud = Crud();
  Future<void> fetchReports() async {
    try {
      reports.clear();
      var response = await _crud.getRequest(LinkReports);
      print(response);
      if (response.statusCode == 200) {
        var data = json.decode(response.body);
        if (data['status'] == "s") {
          reports.assignAll(data['data']);
        } else {
          print("Error: ${data['message']}");
        }
      } else {
        print("Error: ${response.statusCode}");
      }
    } catch (e) {
      print("Error occurred: $e");
    }
  }
}