import 'package:flutter/cupertino.dart';
import 'package:gradproject2/Controller/Class/Crud.dart';
import 'package:gradproject2/models/message_model.dart';
import '../Class/Links.dart';
class MessageProvider extends ChangeNotifier{
  List<MessageModel> message=[];
  final Crud _crud = Crud();
  fetchMessage() async {
    try {
      var response = await _crud.getRequest(linkMessage);
      if (response is Map) {
        var data = response['data'];
        if (data != null && response['status'] == "s") {
          for (var i in response['data']) {
            message.add(MessageModel.fromJson(i));
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