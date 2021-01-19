import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  void onPressed() => print("Pressed");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CircleAvatar(
          backgroundColor: Colors.transparent,
          backgroundImage: NetworkImage('https://cdn.shopify.com/s/files/1/0272/5737/2772/files/logo_x60.png?v=1596304702'),
        ),
        actions: [IconButton(icon: Icon(Icons.cake), onPressed: onPressed)],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(child: FlutterLogo())
          ],
        ),
      ),
      body: Container(),
    );
  }
}
