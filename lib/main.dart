import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:gradproject2/Utils/Static/SizeConfig.dart';
import 'package:gradproject2/Utils/Static/StaticColor.dart';
import 'package:gradproject2/Utils/Static/route.dart';
import 'package:gradproject2/View/Screen/HomeScreen/HomeScreen.dart';
import 'package:gradproject2/View/Screen/LogInScreen/LoginScreen.dart';
import 'package:gradproject2/controller/provider/current_weather_provider.dart';
import 'package:gradproject2/controller/provider/statistics_provider.dart';
import 'package:gradproject2/controller/provider/user_provider.dart';
import 'package:gradproject2/controller/provider/weather_controller.dart';
import 'package:gradproject2/generated/l10n.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'controller/provider/comments_provider.dart';
import 'controller/provider/crops_provider.dart';
import 'controller/provider/message_provider.dart';
import 'controller/provider/report_provider.dart';

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
        ChangeNotifierProvider<ReportsProvider>(
          create: (context) => ReportsProvider(),
        ),
        ChangeNotifierProvider<MessageProvider>(
          create: (context) => MessageProvider(),
        ),
        ChangeNotifierProvider<CommentsProvider>(
          create: (context) => CommentsProvider(),
        ),
        ChangeNotifierProvider<WeatherProvider>(
          create: (context) => WeatherProvider(),
        ),
        ChangeNotifierProvider<CurrentWeather>(
          create: (context) => CurrentWeather(),
        ),
        ChangeNotifierProvider<StatisticsProvider>(
          create: (context) => StatisticsProvider(),
        ),
        ChangeNotifierProvider<CropsProvider>(
          create: (context) => CropsProvider(),
        ),
        ChangeNotifierProvider<UserProvider>(
          create: (context) => UserProvider(),
        ),
      ],
      child: GetMaterialApp(
        localizationsDelegates: const [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale('en', ''), // English
          Locale('ar', ''), // Arabic
        ],
        locale: const Locale('ar'),
        title: 'Flutter Demo',
        theme: ThemeData(
          appBarTheme: const AppBarTheme(
            centerTitle: true,
          ),
          colorScheme: ColorScheme.fromSeed(seedColor: greenlight),
          useMaterial3: true,
        ),
        debugShowCheckedModeBanner: false,
        home: sharedPreferences.getString('Id_UserType') == '1'
            ? const HomeScreen()
            : sharedPreferences.getString('Id_UserType') == '2'
                ? const HomeScreen()
                : const LoginScreen(),
        routes: route,
        builder: EasyLoading.init(),
      ),
    );
  }
}
