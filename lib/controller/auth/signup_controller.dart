import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../../Utils/Static/cons_values.dart';
import '../../Utils/Static/route.dart';

SignUp(BuildContext context,TextEditingController name,TextEditingController phone,TextEditingController password) async {
  // API endpoint URL
  var apiUrl = '${ConsValues.baseurl}SignUp.php'; // Replace with your API endpoint URL

  // Prepare the request body
  var body = {
    "User_Name": name.text,
    "Email": phone.text,
    "Password": password.text,
  };

  // Send the POST request
  var response = await http.post(Uri.parse(apiUrl), body: body);

  // Handle the response
  if (response.statusCode == 200) {
    var data = jsonDecode(response.body);
    var message = data['message']; // Retrieve the response message

    if (message == 'User registered successfully') {
      Get.offAllNamed(AppRoute.login);
    } else {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Sign Up Error'),
          content: Text(message),
          actions: [
            TextButton(
              child: Text('OK'),
              onPressed: () => Navigator.pop(context),
            ),
          ],
        ),
      );
    }
  } else if (response.statusCode == 400) {
    var data = jsonDecode(response.body);
    var message = data['message']; // Retrieve the error message

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Sign Up Error'),
        content: Text(message),
        actions: [
          TextButton(
            child: Text('OK'),
            onPressed: () => Navigator.pop(context),
          ),
        ],
      ),
    );
  } else {
    throw Exception(Text('Failed to sign up: ${response.statusCode}',));
  }
}