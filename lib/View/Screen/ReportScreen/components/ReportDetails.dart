import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gradproject2/Controller/auth/Report_controller.dart';

import '../../../../Utils/Static/SizeConfig.dart';

class ReportDetails extends StatelessWidget {
  const ReportDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    ReportController _ReportController =Get.put(ReportController());
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Report Name #1',style: TextStyle(fontSize: 20),),
        SizedBox(
          height: getProportionateScreenHeight(15),
        ),
        InkWell(
          onTap: (){
            _ReportController.fetchReports();
          },
          child: const Text(
            'Click here',
            style: TextStyle(color: Colors.blue),
          ),
        )
      ],
    );
  }
}
