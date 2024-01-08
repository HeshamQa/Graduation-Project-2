import 'package:flutter/cupertino.dart';
import 'package:gradproject2/Controller/Class/Crud.dart';
import '../../models/reports_model.dart';
import '../Class/Links.dart';
class ReportsProvider extends ChangeNotifier{
  List<ReportsModel> reports=[];
  final Crud _crud = Crud();
  fetchReports() async {
    try {
      var response = await _crud.getRequest(linkReports);
      if (response is Map) {
        var data = response['data'];
        if (data != null && response['status'] == "s") {
          for (var i in response['data']) {
            reports.add(ReportsModel.fromJson(i));
          }
          notifyListeners();
        }

      } else {
        print("Unexpected response type: ${response.runtimeType}");
      }
    } catch (e) {
      print("Error occurred: $e");
    }
  }
}