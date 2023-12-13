import 'package:flutter/material.dart';
import 'package:gradproject2/Utils/Widget/NavBar.dart';
import '../../../Utils/Static/SizeConfig.dart';
import '../../../Utils/Widget/LogoText.dart';
import '../../../Utils/Widget/drawer.dart';

class ForumScreen extends StatelessWidget {
  const ForumScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const LogoText(),
      ),
      bottomNavigationBar: const NavBar(id: 'Messages'),
      drawer: const CustomDrawer(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(18),),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: getProportionateScreenHeight(15),),
            InkWell(
                onTap: (){},
                child: const Text('+ Add New Post',style: TextStyle(color: Colors.blue),)),
            SizedBox(height: getProportionateScreenHeight(10),),
            Expanded(
              child: ListView.builder(
                itemCount: 3,
                itemBuilder: (context, index) => Container(
                  width: getProportionateScreenWidth(375),
                  padding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(15),
                      vertical: getProportionateScreenHeight(15)),
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.symmetric(
                      vertical: getProportionateScreenHeight(10)),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: const [BoxShadow(color: Colors.black54, blurRadius: 5)],
                    borderRadius: BorderRadius.circular(15),
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
                      SizedBox(
                        height: getProportionateScreenHeight(10),
                      ),
                      InkWell(
                          onTap: () {},
                          child: const Text(
                            'Comments',
                            style: TextStyle(
                                color: Colors.grey,
                                decoration: TextDecoration.underline,
                                decorationColor: Colors.grey),
                          )),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
