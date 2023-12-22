import 'package:flutter/material.dart';
import 'package:gradproject2/Utils/Static/SizeConfig.dart';
import 'package:gradproject2/Utils/Static/StaticColor.dart';

class AddNewPost extends StatelessWidget {
  const AddNewPost({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Create Post"),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(right: 20,left: 4),
                height: getProportionateScreenHeight(50),
                width: getProportionateScreenWidth(50),
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(50.0)),
              ),
              Text("Full Name User",style: TextStyle(fontSize: 15 ,fontWeight: FontWeight.bold)),

            ],
          ),
          SizedBox(height: getProportionateScreenHeight(20),),
          TextField(
            decoration: InputDecoration(
              border: UnderlineInputBorder(borderSide: BorderSide.none),
              hintText: 'Enter your post here',
            ),
            maxLines: 8,
          ),

          Row(
            children: [
              Icon(Icons.photo_library,color: greenlight),
              Text("  Add Photo"),
              SizedBox(width: getProportionateScreenWidth(30),),
              Icon(Icons.location_on_sharp , color: Colors.red),
              Text("  Check in"),
              SizedBox(width: getProportionateScreenWidth(35),),
              Icon(Icons.event , color: Colors.red),
              Text("Select calendars"),
            ],
          ),
        ],
      ),
    );
  }
}
