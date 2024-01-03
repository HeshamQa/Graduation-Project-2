import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:gradproject2/Utils/Static/StaticColor.dart';
import 'package:gradproject2/Utils/Static/route.dart';
import 'package:gradproject2/controller/weather_controller.dart';
import 'package:provider/provider.dart';
import 'View/Screen/LogInScreen/LoginScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
     return MultiProvider(
       providers: [
         ChangeNotifierProvider<WeatherProvider>(
           create: (_) => WeatherProvider(),
         ),
       ],
       child: GetMaterialApp(
         title: 'Flutter Demo',
         theme: ThemeData(
           appBarTheme: const AppBarTheme(centerTitle: true,),
           colorScheme: ColorScheme.fromSeed(seedColor: greenlight),
           useMaterial3: true,
         ),
         debugShowCheckedModeBanner: false,
         home: const LoginScreen(),
         routes: route,
         builder: EasyLoading.init(),
       ),
     );
  }
}