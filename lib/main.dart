import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:gradproject2/Utils/Static/SizeConfig.dart';
import 'package:gradproject2/Utils/Static/StaticColor.dart';
import 'package:gradproject2/Utils/Static/route.dart';
import 'package:gradproject2/View/Screen/HomeScreen/HomeScreen.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'Controller/auth/Report_controller.dart';
import 'View/Screen/LogInScreen/LoginScreen.dart';
late SharedPreferences sharedPreferences;

Future<void> main() async {
   WidgetsFlutterBinding.ensureInitialized();                  
   sharedPreferences = await SharedPreferences.getInstance();
   runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
     return MultiProvider(
       providers: [
         ChangeNotifierProvider<ReportsProvider>(create: (context) => ReportsProvider(),),
       ],
       child: GetMaterialApp(
         title: 'Flutter Demo',
         theme: ThemeData(
           appBarTheme: const AppBarTheme(centerTitle: true,),
           colorScheme: ColorScheme.fromSeed(seedColor: greenlight),
           useMaterial3: true,
         ),
         debugShowCheckedModeBanner: false,
          home: const HomeScreen(),
          routes: route,
         builder: EasyLoading.init(),
       ),
     );
  }
}