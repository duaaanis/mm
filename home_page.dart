import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/widgests/drawer.dart';


class HomePage extends StatelessWidget {
  final int days = 30;
  final String name = "CodePur";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
        ),
       body: Center(
        child:  Container(
          child: Text("Welcome To Duaa Anis"),
        ),
       ),
       drawer: MyDrawer(),
     );
  }
}


