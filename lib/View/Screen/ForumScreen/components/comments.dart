import 'package:flutter/material.dart';
import 'package:gradproject2/Utils/Static/SizeConfig.dart';
import 'package:gradproject2/Utils/Static/StaticColor.dart';
import 'package:gradproject2/Utils/Widget/LogoText.dart';
import 'package:gradproject2/Utils/Widget/TextForm.dart';

class Comments extends StatefulWidget {
  const Comments({super.key});

  @override
  State<Comments> createState() => _CommentsState();
}

class _CommentsState extends State<Comments> {
  TextEditingController comment=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const LogoText(),
      ),
      body: Column(
        children: [
          Container(
            width: getProportionateScreenWidth(375),
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(15),
                vertical: getProportionateScreenHeight(15)),
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(
                bottom: getProportionateScreenHeight(15),top: getProportionateScreenHeight(10)),
            decoration: const BoxDecoration(
              color: Colors.white,
              border: Border(bottom: BorderSide(color: Colors.grey))
              // boxShadow: const [BoxShadow(color: Colors.black54, blurRadius: 5)],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.transparent,
                      child: Image.asset('assets/images/avatar.png'),
                    ),
                    SizedBox(
                      width: getProportionateScreenWidth(10),
                    ),
                    const Text('User Name'),
                  ],
                ),
                SizedBox(
                  height: getProportionateScreenHeight(10),
                ),
                const Text(
                  'I have a problem in my planet I have a problem in my planet I have a problem in my planet I have a problem in my planet ',
                ),
                SizedBox(
                  height: getProportionateScreenHeight(10),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 7,
              itemBuilder: (context, index) =>Container(
                width: getProportionateScreenWidth(375),
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(15),
                    vertical: getProportionateScreenHeight(15)),
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(10),
                    vertical: getProportionateScreenHeight(5)),
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.3),
                    borderRadius: const BorderRadius.all(Radius.circular(40)),
                    // boxShadow: const [BoxShadow(color: Colors.black54, blurRadius: 5)],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.transparent,
                          child: Image.asset('assets/images/avatar.png'),
                        ),
                        SizedBox(
                          width: getProportionateScreenWidth(10),
                        ),
                        const Text('User Name'),
                      ],
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(10),
                    ),
                    const Text(
                      'I have a problem in my planet I have a problem in my planet I have a problem in my planet I have a problem in my planet ',
                      maxLines: 5,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Row(
            children: [
              SizedBox(
                  width: getProportionateScreenWidth(325),
                  child: TextForm(hint: "comment", label: "Comment", textEditingController: comment, obscure: false)),
              IconButton(onPressed: (){}, icon: const Icon(
                  color: greendark,
                  Icons.send)),
            ],
          )
        ],
      ),
    );
  }
}
