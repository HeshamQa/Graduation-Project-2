import 'package:flutter/material.dart';

import '../../../../generated/l10n.dart';
import 'FileDetailes.dart';

class FileContainerBody extends StatelessWidget {
  final String year,crop,city;
  const FileContainerBody({
    super.key, required this.year, required this.crop, required this.city,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FileDetails(textType: '${S.of(context).CropType} : ', textDet: crop,),
        const Divider(),
        FileDetails(textType: '${S.of(context).Year} : ', textDet: year),
        const Divider(),
        FileDetails(textType: '${S.of(context).CityName} : ', textDet: city),
      ],
    );
  }
}