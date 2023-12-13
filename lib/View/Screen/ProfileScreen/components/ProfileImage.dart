import 'package:flutter/material.dart';
import 'package:gradproject2/Utils/Static/SizeConfig.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getProportionateScreenHeight(115),
      width: getProportionateScreenWidth(115),
      child: Stack(
        fit: StackFit.expand,
        clipBehavior: Clip.none,
        children: [
          const CircleAvatar(
            backgroundColor: Colors.transparent,
            backgroundImage: AssetImage("assets/images/avatar.png"),
          ),
          Positioned(
            bottom: 0,
            right: -5,
            child: SizedBox(
              width: 45,
              height: 45,
              child: IconButton(
                  style: ButtonStyle(
                      backgroundColor: const MaterialStatePropertyAll(
                          Colors.white),
                      shape: MaterialStatePropertyAll(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                              side: const BorderSide(
                                  color: Colors.white, width: 3)
                            // side: const BorderSide(color: Colors.white),
                          ))),
                  onPressed: () {},
                  icon: Icon(Icons.camera_alt_outlined),
            ),
          ),
          ),
        ],
      ),
    );
  }
}