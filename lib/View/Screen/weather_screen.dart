import 'package:flutter/material.dart';
import 'package:gradproject2/Utils/Static/SizeConfig.dart';
import 'package:gradproject2/Utils/Widget/CustomButton.dart';
import 'package:gradproject2/Utils/Widget/CustomDropDown.dart';
import 'package:gradproject2/controller/weather_controller.dart';
import 'package:gradproject2/models/dropdown_model.dart';
import 'package:provider/provider.dart';

class WeatherScreen extends StatefulWidget {
  const WeatherScreen({super.key});

  @override
  State<WeatherScreen> createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  @override
  void initState() {
    getWeather();
    super.initState();
  }
  getWeather(){
    Provider.of<WeatherProvider>(context,listen: false).getProduct(ss);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            CustomDropDown(selectedValue: dropdownlist[1].value, menuItems: dropdownlist[1].item),
            SizedBox(height: getProportionateScreenHeight(25)),
            CustomButton(text: "show", onTap: (){
              getWeather();
            }),
            SizedBox(height: getProportionateScreenHeight(25),),
            Container(
              padding: const EdgeInsets.all(10),
              width: getProportionateScreenWidth(375),
              decoration: const BoxDecoration(
                color: Colors.green,
                boxShadow: [
                  BoxShadow(color: Colors.black54,spreadRadius: 2,blurRadius: 10),
                ],
                borderRadius: BorderRadius.all(Radius.circular(15)),
              ),
              child: Column(
                children: [
                  const Row(
                    children: [
                      Text('day'),
                      Spacer(),
                      Text("degree"),
                      Spacer(),
                      Text('icon'),
                    ],
                  ),
                  const SizedBox(height: 10,),
                  SizedBox(
                    height: getProportionateScreenHeight(150),
                    width: getProportionateScreenWidth(300),
                    child: Consumer<WeatherProvider>(
                      builder: (BuildContext context, WeatherProvider value, Widget? child) {
                        return ListView.builder(
                        itemCount: value.weatherlist.list!.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          var date=value.weatherlist.list![index].dtTxt!.substring(9,10);
                          print(date);
                          print(DateTime.now().toString());
                          if(DateTime.now().day.toString()==date) {
                            String hour = value.weatherlist.list![index].dtTxt!
                                .substring(10, 16);
                            var temp1 = value.weatherlist.list![index].main!
                                .temp;
                            var temp = temp1.toInt();
                            return Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment
                                    .spaceBetween,
                                children: [
                                  Text(temp.toString()),
                                  Image.asset('assets/icons/${value.weatherlist
                                      .list![index].weather![0].icon}.png'),
                                  Text(hour),
                                ],
                              ),
                            );
                          }
                      },);
                      },
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
