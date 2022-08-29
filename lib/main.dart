import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:untitled11/HomeScreen/HomeScreen.dart';

import 'Screens/SurahDetails.dart';
class MythemeData{
  static var yellow= Color.fromRGBO(234,229 , 9, 1.0);
  static var green= Color.fromRGBO(0, 151, 255, 1.0);
  static var darkgreen= Color.fromRGBO(32,22 , 0, 1.0);
  static var darkgray= Color.fromRGBO(139,138 , 127, 1.0);
}
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('ar', 'SA'),
      ],

      themeMode: ThemeMode.light,
      routes: {
        HomeScreen.ROUTE_NAME:(context)=>HomeScreen(),
   SurahDetailes.Route_Name:(context)=>SurahDetailes(),

      },
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor:MythemeData.yellow,
       accentColor:MythemeData.green ,

        primarySwatch: Colors.blue,
        iconTheme: IconThemeData(

        ),

        bottomNavigationBarTheme: BottomNavigationBarThemeData(

backgroundColor: MythemeData.yellow,

        ),

      ),
      darkTheme:  ThemeData(
        primaryColor:MythemeData.darkgreen  ,
        accentColor:MythemeData.yellow,
        secondaryHeaderColor: Colors.amberAccent,
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}


