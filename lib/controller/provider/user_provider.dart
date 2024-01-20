import 'package:flutter/cupertino.dart';
import 'package:gradproject2/Utils/Static/crud.dart';
import 'package:gradproject2/Utils/Static/links.dart';

import '../../main.dart';

class UserProvider extends ChangeNotifier {
  final Crud _crud = Crud();

  Future<bool> updateUserName(String newUserName) async {
    try {
      var idUser = sharedPreferences.getString('Id').toString();
      var response = await _crud.postRequest(linkUpdateUserName, {
        'Id': idUser,
        'User_Name': newUserName,
      });

      if (response is Map && response['status'] == "s") {
        // Update was successful
        return true;
      } else {
        // Handle failure
        print("Unexpected response type: ${response.runtimeType}");
        return false;
      }
    } catch (e) {
      print("Error occurred: $e");
      return false;
    }
  }

  Future<bool> updateUserEmail(String newEmail) async {
    try {
      var idUser = sharedPreferences.getString('Id').toString();
      var response = await _crud.postRequest(linkUpdateEmail, {
        'Id': idUser,
        'Email': newEmail,
      });

      if (response is Map && response['status'] == "s") {
        return true;
      } else {
        print("Unexpected response type: ${response.runtimeType}");
        return false;
      }
    } catch (e) {
      print("Error occurred: $e");
      return false;
    }
  }

  Future<bool> updateUserPassword(String currentPassword, String newPassword) async {
    try {
      var idUser = sharedPreferences.getString('Id').toString();
      var response = await _crud.postRequest(linkUpdatePassword, {
        'Id': idUser,
        'CurrentPassword': currentPassword,
        'NewPassword': newPassword,
      });

      if (response['status'] == "s") {
        return true;
      } else {
        print("Unexpected response type or error from server: ${response.runtimeType}");
        return false;
      }
    } catch (e) {
      print("Error occurred: $e");
      return false;
    }
  }

}
