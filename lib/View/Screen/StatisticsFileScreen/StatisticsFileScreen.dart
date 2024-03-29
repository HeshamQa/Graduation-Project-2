import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gradproject2/View/Screen/StatisticsFileScreen/components/FileContainer.dart';
import 'package:gradproject2/controller/provider/statistics_provider.dart';
import 'package:provider/provider.dart';
import '../../../Utils/Static/SizeConfig.dart';
import '../../../Utils/Widget/CustomButton.dart';
import '../../../Utils/Widget/CustomRadioButton.dart';
import '../../../generated/l10n.dart';

class StatisticsFileScreen extends StatefulWidget {
  final String year, crop, city;

  const StatisticsFileScreen(
      {super.key, required this.year, required this.crop, required this.city});

  @override
  State<StatisticsFileScreen> createState() => _StatisticsFileScreenState();
}

class _StatisticsFileScreenState extends State<StatisticsFileScreen> {
  @override
  void initState() {
    Provider.of<StatisticsProvider>(context, listen: false)
        .fetchStatistics2(widget.year, widget.crop, widget.city, gender);
    super.initState();
  }

  late Uri url;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
            children: [
              FileContainer(
                year: widget.year,
                crop: widget.crop,
                city: widget.city,
              ),
              SizedBox(height: getProportionateScreenHeight(35)),
              Consumer<StatisticsProvider>(
                  builder: (BuildContext context, StatisticsProvider value,
                          Widget? child) =>
                      CustomButton(
                          text: S.of(context).DownloadFile,
                          onTap: () async {
                            // url = Uri.parse(value.statistic2[0].Url);
                            // if (await canLaunchUrl(url)) {
                            //   await launchUrl(url);
                            // }
                            print(value.statistic2[0].Url);
                          })),
              const Spacer(),
              CustomButton(text: S.of(context).Back, onTap: () {Get.back();}),
            ],
          ),
    );
  }
}
