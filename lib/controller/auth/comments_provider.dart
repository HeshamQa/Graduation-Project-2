import 'package:flutter/cupertino.dart';
import 'package:gradproject2/Controller/Class/Crud.dart';
import 'package:gradproject2/models/comments_model.dart';
import '../Class/Links.dart';
class CommentsProvider extends ChangeNotifier{
  List<CommentsModel> comment=[];
  final Crud _crud = Crud();
  fetchMessage(var Id) async {
    try {
      var response = await _crud.postRequest(linkComment,
          {'Id_Message':Id}
      );
      if (response is Map) {
        var data = response['data'];
        if (data != null && response['status'] == "s") {
          for (var i in response['data']) {
            print(i);
            comment.add(CommentsModel.fromJson(i));
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