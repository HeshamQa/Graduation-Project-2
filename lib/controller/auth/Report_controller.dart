import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:gradproject2/Controller/Class/Crud.dart';
import 'package:gradproject2/Controller/Class/Links.dart';
import 'dart:convert';

class ReportController extends GetxController {
  var isLoading = false.obs;
  var reports = <Map<String, dynamic>>[].obs;
  Crud _crud = Crud();

  Future<void> fetchReports() async {
    isLoading(true);
    try {
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
    } finally {
      isLoading(false);
    }
  }
}
