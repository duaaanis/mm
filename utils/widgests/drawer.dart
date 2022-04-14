import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final imagePath = 
     "C:/Users/NAJAM BOSS/Desktop/kk/gg.jpg";
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              margin: EdgeInsets.zero,
              accountName: Text("Duaa Anis"),
              accountEmail: Text("anisduaa13@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(imagePath),
              ),
              ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.home,
              color: Colors.white,
              ),
              title: Text(
                "Home",
                textScaleFactor: 1.2,
                 style: TextStyle(
                color: Colors.white,
              ),
              ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.profile_circled,
              color: Colors.white,
              ),
              title: Text(
                "Profile",
                textScaleFactor: 1.2,
                 style: TextStyle(
                color: Colors.white,
              ),
              ),
          ),
           ListTile(
            leading: Icon(
              CupertinoIcons.mail,
              color: Colors.white,
              ),
              title: Text(
                "Email me",
                textScaleFactor: 1.2,
                 style: TextStyle(
                color: Colors.white,
              ),
              ),
          ),
        ],
      ),
      ),
    );
  }
}