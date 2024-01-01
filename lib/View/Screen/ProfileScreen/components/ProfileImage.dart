import 'dart:io';

import 'package:flutter/material.dart';
import 'package:gradproject2/Utils/Static/SizeConfig.dart';
import 'package:image_picker/image_picker.dart';

class ProfileImage extends StatefulWidget {
  const ProfileImage({
    super.key,
  });

  @override
  State<ProfileImage> createState() => _ProfileImageState();
}

class _ProfileImageState extends State<ProfileImage> {
  File? _selectedImage;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getProportionateScreenHeight(115),
      width: getProportionateScreenWidth(115),
      child: Stack(
        fit: StackFit.expand,
        clipBehavior: Clip.none,
        children: [
          _selectedImage != null ?
          ClipRRect(
              borderRadius: BorderRadius.circular(200),
              child: Image.file( _selectedImage!,fit: BoxFit.cover,)):
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
                onPressed: () {showOptionChooser();},
                icon: const Icon(Icons.camera_alt_outlined),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void showOptionChooser() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: const Text("Please Choose"),
          actions: [
            TextButton(
              child: const Text('Camera'),
              onPressed: () {
                Navigator.pop(context);
                _pickImageFromCamera();
              },
            ),
            TextButton(
              child: const Text('Gallery'),
              onPressed: () {
                Navigator.pop(context);
                _pickImageFromGallery();
                // getImage(ImageSource.gallery);
              },
            )
          ],
        );
      },
    );
  }

  Future _pickImageFromGallery() async {
    final returnedImage = await ImagePicker().pickImage(
        source: ImageSource.gallery);
    setState(() {
      _selectedImage = File(returnedImage!.path);
    });
  }

  Future _pickImageFromCamera() async {
    final returnedImage = await ImagePicker().pickImage(
        source: ImageSource.camera);
    setState(() {
      _selectedImage = File(returnedImage!.path);
    });
  }
}