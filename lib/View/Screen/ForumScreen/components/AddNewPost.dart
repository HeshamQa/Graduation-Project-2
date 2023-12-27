import 'package:flutter/material.dart';
import 'package:gradproject2/Utils/Static/SizeConfig.dart';
import 'package:gradproject2/Utils/Static/StaticColor.dart';

class AddNewPost extends StatelessWidget {
  const AddNewPost({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Post"),
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.send,color: greendark,))
        ],
      ),
      body: Column(
        children: [
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(right: 20,left: 4),
                height: getProportionateScreenHeight(50),
                width: getProportionateScreenWidth(50),
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(50.0)),
              ),
              const Text("Full Name User",style: TextStyle(fontSize: 15 ,fontWeight: FontWeight.bold)),

            ],
          ),
          SizedBox(height: getProportionateScreenHeight(20),),
          const TextField(
            decoration: InputDecoration(
              border: UnderlineInputBorder(borderSide: BorderSide.none),
              hintText: 'Enter your post here',
            ),
            maxLines: 8,
          ),

          Row(
            children: [
              const Icon(Icons.photo_library,color: greenlight),
              const Text("  Add Photo"),
              SizedBox(width: getProportionateScreenWidth(30),),
              const Icon(Icons.location_on_sharp , color: Colors.red),
              const Text("  Check in"),
              SizedBox(width: getProportionateScreenWidth(35),),
              const Icon(Icons.event , color: Colors.red),
              const Text("Select calendars"),
            ],
          ),
        ],
      ),
    );
  }
}
