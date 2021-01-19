import 'package:butterfly_dart/screens/home.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: Colors.white),
            child: CircleAvatar(
              child: Image.asset(
                'ios/256.png',
                fit: BoxFit.contain,
              ),
            ),
          ),
          ListTile(
          leading: Icon(Icons.home),
          title: Text('Home'),
          onTap: () {
            Navigator.pushNamed(context, Home.routeName);
          }),
          ListTile(
          leading: Icon(Icons.home),
          title: Text('Bio'),
          onTap: () {
            Navigator.pushNamed(context, Home.routeName);
          })
        ],
      ),
    );
  }
}
