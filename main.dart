import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/login_page.dart';
import 'package:flutter_application_1/utils/routes.dart';

import 'home_page.dart';
import 'login_page.dart';
import 'pages/home_page.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
     themeMode: ThemeMode.light,
     theme: ThemeData(
       primarySwatch: Colors.deepPurple,
        appBarTheme: AppBarTheme(
         color: Colors.white,
         elevation: 0.0,
         iconTheme: IconThemeData(color: Colors.black),
         textTheme: Theme.of(context).textTheme,
        ),
     ),
     darkTheme: ThemeData(
      primarySwatch: Colors.deepPurple
     ),
     initialRoute: MyRoutes.homeRoute,
     routes: {
       "/": (context) => LoginPgae(),
       MyRoutes.homeRoute: (context) => HomePage(),
       MyRoutes.loginRoute: (context) => LoginPgae(),
     },
    );  
  }
}