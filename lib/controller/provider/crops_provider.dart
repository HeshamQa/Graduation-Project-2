import 'package:flutter/cupertino.dart';
import 'package:gradproject2/Utils/Static/Crud.dart';

import '../../Utils/Static/links.dart';
Crud _crud = Crud();
class CropsProvider extends ChangeNotifier{
  addCrops(String Crops_Name,String Semester,String Crops_Dunum,String City) async {
    try {
      await _crud.postRequest(linkAddCrops,
          {
            "Crops_Name":Crops_Name,
            "Semester":Semester,
            "Crops_Dunum":Crops_Dunum,
            "City":City
          }
      );
    } catch (e) {
      print("Error occurred: $e");
    }
  }
  Future<String> fetchCrops(String city, String semester, String cropsName) async {
    String cropsDunum = '0'; // Default value if no data is found or in case of error

    try {
      var response = await _crud.postRequest(linkGetCrops, {
        "City": city,
        "Semester": semester,
        "Crops_Name": cropsName,
      });

      // Check if response is a Map and handle accordingly
      if (response is Map) {
        if (response['status'] == "s") {
          var data = response['data'];
          if (data != null && data.isNotEmpty) {
            cropsDunum = data[0]['Crops_Dunum'].toString();
          }
        } else {
          notifyListeners();
          return "0";
          // print("API returned failure status: ${response['status']}");
        }
      } else {
        // Log unexpected response type
        print("Unexpected response type: ${response.runtimeType}");
      }
    } catch (e) {
      // Handle errors in API call
      print("Error occurred: $e");
    }

    notifyListeners();
    return cropsDunum;
  }


}