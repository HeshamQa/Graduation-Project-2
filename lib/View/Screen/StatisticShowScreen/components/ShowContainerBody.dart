import 'package:flutter/material.dart';
import 'package:gradproject2/Utils/Widget/CustomRadioButton.dart';
import 'package:gradproject2/controller/provider/statistics_provider.dart';
import 'package:provider/provider.dart';

import '../../../../generated/l10n.dart';
import 'ShowDetailes.dart';

class ShowContainerBody extends StatefulWidget {
  final String year,crop,city;
  const ShowContainerBody({
    super.key, required this.year, required this.crop, required this.city,
  });

  @override
  State<ShowContainerBody> createState() => _ShowContainerBodyState();
}

class _ShowContainerBodyState extends State<ShowContainerBody> {
  @override
  void initState() {
    Provider.of<StatisticsProvider>(context,listen: false).fetchStatistics(widget.year, widget.crop, widget.city, gender);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Consumer<StatisticsProvider>(
      builder: (BuildContext context, StatisticsProvider value, Widget? child) => Column(
        children: [
          ShowDetails(textType: '${S.of(context).Crops} : ', textDet: widget.crop,),
          const Divider(),
          ShowDetails(textType: '${S.of(context).Year} : ', textDet: widget.year),
          const Divider(),
          ShowDetails(textType: '${S.of(context).CityName} : ', textDet: widget.city),
          const Divider(),
          ShowDetails(textType: '${S.of(context).CultivatedArea} : ', textDet: value.statistic[0].Space),
          const Divider(),
          ShowDetails(textType: '${S.of(context).TotalProduction} : ', textDet: value.statistic[0].Production)
        ],
      ),
    );
  }
}