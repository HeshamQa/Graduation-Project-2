import 'package:flutter/material.dart';

import '../../../../Utils/Static/SizeConfig.dart';

class ReportDetails extends StatelessWidget {
  const ReportDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Report Name #1',style: TextStyle(fontSize: 20),),
        SizedBox(
          height: getProportionateScreenHeight(15),
        ),
        InkWell(
          onTap: (){},
          child: const Text(
            'Click here',
            style: TextStyle(color: Colors.blue),
          ),
        )
      ],
    );
  }
}
