import 'package:flutter/material.dart';

import 'ShowDetailes.dart';

class ShowContainerBody extends StatelessWidget {
  const ShowContainerBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        ShowDetails(textType: 'Crop Type : ', textDet: 'cropType',),
        Divider(),
        ShowDetails(textType: 'Year : ', textDet: 'year'),
        Divider(),
        ShowDetails(textType: 'City Name : ', textDet: 'cityName'),
        Divider(),
        ShowDetails(textType: 'Number Of Donoms : ', textDet: 'numOfDon')
      ],
    );
  }
}