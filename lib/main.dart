import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:tb_azkar_app/screens/home_screen.dart';
import 'package:tb_azkar_app/screens/info_scrren.dart';
import 'package:tb_azkar_app/screens/launch_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      localizationsDelegates:const [
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale("ar"),
        Locale("en")
      ],
      locale:const  Locale("ar"),
      debugShowCheckedModeBanner: false,
     //home: LunchScreen(),
     initialRoute: '/launch_screen',
     routes: {
      '/launch_screen':(context) => const LaunchScreen(),
      '/home_screen':(context) => const HomeScreen(),
      '/info_screen':(context) => const InfoScreen(),
      
     } ,
    );
  }
}
 