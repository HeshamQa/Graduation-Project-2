import 'package:flutter/material.dart';

import 'FileDetailes.dart';

class FileContainerBody extends StatelessWidget {
  const FileContainerBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        FileDetails(textType: 'Crop Type : ', textDet: 'Tomato',),
        Divider(),
        FileDetails(textType: 'Year : ', textDet: '2002'),
        Divider(),
        FileDetails(textType: 'City Name : ', textDet: 'Irbid'),
      ],
    );
  }
}